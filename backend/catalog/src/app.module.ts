import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { ProductService } from './service/product/product.service';
import { CategoriesService } from './service/categories/categories.service';

@Module({
  imports: [],
  controllers: [AppController],
  providers: [AppService, ProductService, CategoriesService],
})
export class AppModule {}
