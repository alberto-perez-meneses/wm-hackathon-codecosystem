import { Controller, Get, Param, Query } from '@nestjs/common';
import { AppService } from './app.service';
import { LayoutService } from './service/layout/layout.service';

@Controller("v1/store")
export class AppController {


  constructor(
  private readonly layout: LayoutService,
  private readonly appService: AppService
  ) {
    
  }

  @Get()
  getHello(): string {
    return this.appService.getHello();
  }

  @Get("list")
  getStoreList() :any {
    return this.layout.getStoreList();
  }

  @Get(":storeId")
  getStore(@Param("storeId") storeId: string): any {
    return this.layout.getStore(storeId);
  }
}
