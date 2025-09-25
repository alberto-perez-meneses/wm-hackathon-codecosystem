import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { LayoutService } from './service/layout/layout.service';

@Module({
  imports: [],
  controllers: [AppController],
  providers: [AppService, LayoutService],
})
export class AppModule {}
