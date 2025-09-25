import { Controller, Get, Param } from '@nestjs/common';
import { AppService } from './app.service';
import { ProductService } from './service/product/product.service';
import { CategoriesService } from './service/categories/categories.service';

@Controller("v1/catalog")
export class AppController {
  constructor(
    private readonly appService: AppService,
    private readonly productService: ProductService,
    private readonly categoriesService: CategoriesService
  ) { }

  @Get()
  getHello(): string {
    return this.appService.getHello();
  }

  @Get("products")
  getStoreList(): any {
    return this.productService.getProductList();
  }

  @Get("products/:slug")
  getStore(@Param("slug") slug: string): any {
    return this.productService.getProductBySlug(slug);
  }
  @Get("categories")
  getCategories(): any {
    return this.categoriesService.getCategories();
  }
}
