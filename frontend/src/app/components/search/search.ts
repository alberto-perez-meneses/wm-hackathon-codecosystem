import { Component, OnDestroy, OnInit } from '@angular/core';
import { Subject, Subscription } from 'rxjs';
import { debounceTime, distinctUntilChanged } from 'rxjs/operators';

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

  products: Product[] = [];

  filteredProducts = [...this.products]; // resultados de búsqueda
  private searchSubject = new Subject<string>();
  private subscription?: Subscription;

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

  // Método que ejecuta la búsqueda real
  private buscarProducto(searchTerm: string) {
    // esto tiene que ser un servicio que consulte un backend
    console.log('Buscando producto:', searchTerm);
    this.products = [
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


    if (!searchTerm.trim()) {
      this.filteredProducts = [...this.products];
      return;
    }

    const term = searchTerm.toLowerCase();
    this.filteredProducts = this.products.filter((p) =>
      p.name.toLowerCase().includes(term)
    );
  }

}
