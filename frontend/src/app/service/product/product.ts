import { HttpClient } from '@angular/common/http';
import { inject, Injectable } from '@angular/core';
import { Observable } from 'rxjs';

export interface Product {
    name: string;
    category: string;
    icon: string;
    price: number;
    slug: string;
    image?: string;
    description?: string;
    stores: string[];
}

@Injectable({
  providedIn: 'root'
})
export class Product {
  

   private http = inject(HttpClient);

  getProductList = (searchTerm?: string): Observable<Product[]> => {
  const url = searchTerm
    ? `http://localhost:3001/v1/catalog/products?q=${encodeURIComponent(searchTerm)}`
    : 'http://localhost:3001/v1/catalog/products';

  return this.http.get<Product[]>(url, { priority: 'low' });
};

  getProductBySlug = (slug: string): Observable<Product> => {
    return this.http.get<Product>(`http://localhost:3001/v1/catalog/products/${slug}`,
      {
        priority:'low'
      }
    );
  }

}
