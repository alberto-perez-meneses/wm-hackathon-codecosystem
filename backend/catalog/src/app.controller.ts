import { Body, Controller, Get, Param, Post, Put, Query } from '@nestjs/common';
import { ProductService } from './service/product/product.service';
import { CategoriesService } from './service/categories/categories.service';
import { Product } from './service/product/product.service';

@Controller("v1/catalog")
export class AppController {
  constructor(
    private readonly productService: ProductService,
    private readonly categoriesService: CategoriesService
  ) { }



  @Get("products")
  getStoreList(): any {
    return this.productService.getProductList();
  }

  @Get("products/:slug")
  async getStore(@Param("slug") slug: string) {
    return this.productService.getProductBySlug(slug);
  }
  @Get("categories")
  getCategories(): any {
    return this.categoriesService.getCategories();
  }

  @Put("index")
  async indexProducts(@Body() products: Product[]) {
    return this.productService.indexProducts(products);
  }

  @Get()
  async getProducts(@Query('q') q?: string) {
    if (q) {
      return this.productService.searchProducts(q);
    }
    return this.productService.getProductList();
  }
}
