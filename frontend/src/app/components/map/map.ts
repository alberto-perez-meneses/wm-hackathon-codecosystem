import { Component, effect, inject, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { map, Observable } from 'rxjs';
import { Store } from '../../service/store/store';
import { AsyncPipe } from '@angular/common';
import { Product } from '../../service/product/product';

interface Aisle {
  id: string
  name: string
  x: number
  y: number
  width: number
  height: number
  category: string
}

interface StoreLayout {
  id: string
  name: string
  aisles: Aisle[]
  mapHeight: number
}




@Component({
  selector: 'app-map',
  imports: [AsyncPipe],
  templateUrl: './map.html',
  styleUrl: './map.css',
  standalone: true,
})
export class Map implements OnInit {
  private route = inject(ActivatedRoute);
  private storeService = inject(Store);
  private productService = inject(Product);


   stores$: Observable<StoreLayout> | undefined;
   productDetail$: Observable<Product> | undefined;

  // Observables que reaccionan a cambios en la URL
  store$ = this.route.params.pipe(
    map(params => params['store'])
  );

  product$ = this.route.params.pipe(
    map(params => params['product'])
  );

  // Valores iniciales (snapshot)
  store!: string;
  product!: string;
  storeLayout$:  Observable<StoreLayout> | undefined;
  

  ngOnInit() {
   
  }

  constructor() {
     this.store = this.route.snapshot.params['store'];
    this.product = this.route.snapshot.params['product'];
    
    // Obtener el diseño de la tienda basado en el parámetro de la URL
  
   effect(() => {
      this.storeLayout$ = this.storeService.getStore(this.store);
      this.productDetail$ = this.productService.getProductBySlug(this.product);
         console.log(this.productDetail$);
    });
  }
  

  getAisleColor(category: string): string {
    switch (category) {
      case 'entrance': return '#4CAF50'; // Green
      case 'produce': return '#8BC34A'; // Light Green
      case 'meat': return '#F44336'; // Red
      case 'pharmacy': return '#2196F3'; // Blue
      case 'electronics': return '#FF9800'; // Orange
      case 'checkout': return '#9E9E9E'; // Grey
      default: return '#607D8B'; // Blue Grey
    }
  }

  

  get mapHeight(): number {
    return 500; // Default height
  }

  getAisles(): Aisle[] {
    return [];
  }

  
  
}
