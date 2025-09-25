import { Component, effect, inject, signal } from '@angular/core';
import { Router } from '@angular/router';
import {FormsModule} from '@angular/forms';
import { Search } from '../search/search';
import { Store } from '../../service/store/store';
import { AsyncPipe } from '@angular/common';
import { Observable } from 'rxjs';

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

 products = [
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

}
