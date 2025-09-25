import { Injectable } from '@nestjs/common';

interface Product {
    name: string;
    category: string;
    icon: string;
    price: number;
    slug: string;
    stores: string[];
}

@Injectable()
export class ProductService {

    products: Product[] = [
        {
            name: 'Paracetamol 500mg',
            slug: 'paracetamol-500mg',
            category: 'Farmacia',
            icon: 'pill',
            price: 25.0,
            stores: ['plaza-central', 'norte', 'sur', 'oriente']
        },
        {
            name: 'Cereal Integral',
            slug: 'cereal-integral',
            category: 'Abarrotes',
            icon: 'package',
            price: 45.0,
            stores: ['plaza-central', 'norte', 'sur', 'oriente']
        },
        {
            name: 'Detergente Líquido',
            slug: 'detergente-liquido',
            category: 'Limpieza',
            icon: 'sparkles',
            price: 30.0,
            stores: ['plaza-central', 'norte', 'sur', 'oriente']
        },
        {
            name: 'Audífonos Bluetooth',
            slug: 'audifonos-bluetooth',
            category: 'Electrónica',
            icon: 'zap',
            price: 150.0,
            stores: ['plaza-central', 'norte', 'sur', 'oriente']
        },
        {
            name: 'Ibuprofeno 200mg',
            slug: 'ibuprofeno-200mg',
            category: 'Farmacia',
            icon: 'pill',
            price: 20.0,
            stores: ['plaza-central', 'norte', 'sur', 'oriente']
        },
        {
            name: 'Leche Deslactosada',
            slug: 'leche-deslactosada',
            category: 'Abarrotes',
            icon: 'package',
            price: 35.0,
            stores: ['plaza-central', 'norte', 'sur', 'oriente']
        },
        {
            name: 'Limpiador Multiusos',
            slug: 'limpiador-multiusos',
            category: 'Limpieza',
            icon: 'sparkles',
            price: 28.0,
            stores: ['plaza-central', 'norte', 'sur', 'oriente']
        },
        {
            name: 'Cargador USB-C',
            slug: 'cargador-usb-c',
            category: 'Electrónica',
            icon: 'zap',
            price: 120.0,
            stores: ['plaza-central', 'norte', 'sur', 'oriente']
        }
    ]

    getProductList() {
        return this.products;
    }

    getProductBySlug(slug: string) {
        return this.products.find(product => product.slug === slug);
    }

}
