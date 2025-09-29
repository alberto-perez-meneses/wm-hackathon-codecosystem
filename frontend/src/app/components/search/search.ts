import { ChangeDetectionStrategy, Component, effect, inject, input, Input, OnDestroy, OnInit, signal } from '@angular/core';
import { Observable, Subject, Subscription } from 'rxjs';
import { debounceTime, distinctUntilChanged } from 'rxjs/operators';
import { Product as ProductService } from '../../service/product/product';
import { UploadImage } from '../upload-image/upload-image';

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
  imports: [UploadImage],
  templateUrl: './search.html',
  standalone: true,
  styleUrl: './search.css'
})
export class Search implements OnInit, OnDestroy {

    readonly searchWord = signal<string>('pa');

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

  imageSetWordAndChanged(event: any) {
    //console.log('Palabra clave recibida en Search:', event);
    this.searchWord.set(event);
    this.buscarProducto(event);
  }

  // Método que recibe el texto del input
  onSearchChange(searchTerm: string) {
    this.searchSubject.next(searchTerm);
  }

private buscarProducto(searchTerm: string) {
    this.productService.getProductList(searchTerm).subscribe((products) => {
      this.products = products;
      console.log('Productos recibidos:', this.products);
      this.filteredProducts = [...this.products];
    });
  
  }
  


}
