import { Component, effect, inject, signal } from '@angular/core';
import { Router } from '@angular/router';
import {FormsModule} from '@angular/forms';
import { Search } from '../search/search';
import { Store } from '../../service/store/store';
import { AsyncPipe } from '@angular/common';
import { Observable } from 'rxjs';
import { Product } from '../../service/product/product';

// usar servicio de catalogo para buscar productos

interface StoreList {
  id :string
  name : string
  address : string
}

@Component({
  selector: 'app-home',
  imports: [FormsModule , Search,AsyncPipe],
  templateUrl: './home.html',
  styleUrl: './home.css'
})
export class Home {


  private storeService = inject(Store);

  stores$: Observable<StoreList[]> | undefined;
  
  constructor() {
    effect(() => {
      this.stores$ = this.storeService.getStoreList();
    });
    
  }

  categories = [
    { name: 'Farmacia', icon: 'pill', color: 'bg-red-50 text-red-600 border-red-200' },
    { name: 'Abarrotes', icon: 'package', color: 'bg-green-50 text-green-600 border-green-200' },
    { name: 'Limpieza', icon: 'sparkles', color: 'bg-blue-50 text-blue-600 border-blue-200' },
    { name: 'Electrónica', icon: 'zap', color: 'bg-purple-50 text-purple-600 border-purple-200' },
  ];
}
