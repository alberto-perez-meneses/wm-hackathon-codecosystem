import { ChangeDetectionStrategy, Component, effect, inject, Input, OnDestroy, OnInit } from '@angular/core';
import { Observable, Subject, Subscription } from 'rxjs';
import { debounceTime, distinctUntilChanged } from 'rxjs/operators';
import { Product as ProductService } from '../../service/product/product';

// usar servicio de catalogo para buscar productos

interface Product {
  name: string;
  category: string;
  icon: string;
  price: number;
  slug: string;
  stores: string[];
}

@Component({
  selector: 'app-search',
  imports: [],
  templateUrl: './search.html',
  standalone: true,
  styleUrl: './search.css'
})
export class Search implements OnInit, OnDestroy {

  private productService = inject(ProductService);
  products$: Observable<Product[]> | undefined;

  products: Product[] = [];

  filteredProducts = [...this.products]; // resultados de búsqueda
  private searchSubject = new Subject<string>();
  private subscription?: Subscription;
  

  @Input() storeId: string | null = null;

  constructor() {
    effect(() => {
      this.products$ = this.productService.getProductList();
    });
    
  }

  ngOnInit() {
    // Configuramos el debounce de 2 segundos
    this.subscription = this.searchSubject
      .pipe(debounceTime(1000), distinctUntilChanged())
      .subscribe((term) => {
        this.buscarProducto(term);
      });
  }

  ngOnDestroy() {
    this.subscription?.unsubscribe();
  }

  // Método que recibe el texto del input
  onSearchChange(searchTerm: string) {
    this.searchSubject.next(searchTerm);
  }
  /*
  private buscarProducto(searchTerm: string) {
  this.productService.getProductList().subscribe((products) => {
    this.products = products;

    if (!searchTerm.trim()) {
      this.filteredProducts = [...this.products];
      return;
    }

    const term = searchTerm.toLowerCase();
    this.filteredProducts = this.products.filter((p) =>
      p.name.toLowerCase().includes(term)
    );
  });
}
  */

private buscarProducto(searchTerm: string) {
    this.productService.getProductList().subscribe((products) => {
      this.products = products;

      if (!searchTerm.trim()) {
        this.filteredProducts = [...this.products];
        return;
      }

      const term = searchTerm.toLowerCase();

      // Filtrar por nombre y por storeId si está presente
      this.filteredProducts = this.products.filter((p) => {
        const nameMatch = p.name.toLowerCase().includes(term);
        const storeMatch =
          !this.storeId || p.stores.includes(this.storeId); //Si this.storeId tiene un valor solo busca los productos de ese storeId
        return nameMatch && storeMatch;
      });
    });
  }


}
