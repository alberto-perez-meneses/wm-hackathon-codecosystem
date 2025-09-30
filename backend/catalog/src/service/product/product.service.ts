import { Injectable } from '@nestjs/common';
import Typesense from 'typesense';

export interface Product {
    name: string;
    category: string;
    icon: string;
    price: number;
    slug: string;
    image?: string;
    description?: string;
    stores: string[];
}

@Injectable()
export class ProductService {


    typesense = new Typesense.Client({
        nodes: [
            {
                host: 'localhost',
                port: 8108,
                protocol: 'http'
            }
        ],
        apiKey: 'test',
        connectionTimeoutSeconds: 2
    });
    constructor() { }

    async getProductList() {
        try {
            const searchResults = await this.typesense
                .collections('products')
                .documents()
                .search({
                    q: "*",
                    query_by: 'name',   // Campo de búsqueda obligatorio
                    per_page: 30
                });

            // Si no encuentra nada
            if (!searchResults.hits || searchResults.hits.length === 0) {
                return { message: 'Productos no encontrados' };
            }

            // Retornar el primer resultado (o todos si lo prefieres)
            return searchResults.hits.map(hit => hit.document);
        } catch (error) {
            throw new Error(`Error al buscar el producto: ${error.message}`);
        }
    }



    async getProductBySlug(slug: string) {
        try {
            const searchResults = await this.typesense
                .collections('products')
                .documents()
                .search({
                    q: slug,
                    query_by: 'slug',
                });

            // Si no encuentra nada
            if (!searchResults.hits || searchResults.hits.length === 0) {
                return { message: 'Producto no encontrado', slug };
            }

            // Retornar el primer resultado (o todos si lo prefieres)
            return searchResults.hits[0].document;
        } catch (error) {
            throw new Error(`Error al buscar el producto: ${error.message}`);
        }
    }

    async searchProducts(searchTerm: string) {
        try {
            const searchResults = await this.typesense
                .collections('products')
                .documents()
                .search({
                    q: searchTerm || '*', 
                    query_by: 'name,category,slug', // campos en los que buscar
                    per_page: 30
                });

            if (!searchResults.hits || searchResults.hits.length === 0) {
                return { message: 'Productos no encontrados', searchTerm };
            }

            return searchResults.hits.map(hit => hit.document);
        } catch (error) {
            throw new Error(`Error al buscar productos: ${error.message}`);
        }
    }

    async indexProducts(products: Product[]) {



        const schema = {
            name: 'products',
            fields: [
                { name: 'name', type: 'string' as const },
                { name: 'category', type: 'string' as const },
                { name: 'icon', type: 'string' as const },
                { name: 'price', type: 'float' as const },
                { name: 'slug', type: 'string' as const },
                { name: 'image', type: 'string' as const, optional: true },
                { name: 'description', type: 'string' as const, optional: true },
                { name: 'stores', type: 'string[]' as const, facet: true }
            ],
            default_sorting_field: 'price'
        };


        try {
            await this.typesense.collections('products').retrieve();
            console.log('Collection already exists');
        } catch (error) {
            if (error.httpStatus === 404) {
                await this.typesense.collections().create(schema);
                console.log('Collection created');
            } else {
                console.error('Error checking collection existence:', error);
                return;
            }
        }


        try {
            const returnData = await this.typesense.collections('products').documents().import(products, { action: 'upsert' });
            console.log('Products indexed:', returnData);
        } catch (error) {
            console.error('Error indexing products:', error);
        }
    }

}
