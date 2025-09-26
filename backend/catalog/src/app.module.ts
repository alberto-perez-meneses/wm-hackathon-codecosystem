import { Module } from '@nestjs/common';
import { AppController } from './app.controller'
import { ProductService } from './service/product/product.service';
import { CategoriesService } from './service/categories/categories.service';

@Module({
  imports: [],
  controllers: [AppController],
  providers: [ ProductService, CategoriesService],
})
export class AppModule {}
