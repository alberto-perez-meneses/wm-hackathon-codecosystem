import { HttpClient } from '@angular/common/http';
import { inject, Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from '../../../environments/environment';

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
    ? `${environment.catalogUrl}/v1/catalog/products?q=${encodeURIComponent(searchTerm)}`
    : `${environment.catalogUrl}/v1/catalog/products`;

  return this.http.get<Product[]>(url, { priority: 'low' });
};

  getProductBySlug = (slug: string): Observable<Product> => {
    return this.http.get<Product>(`${environment.catalogUrl}/v1/catalog/products/${slug}`,
      {
        priority:'low'
      }
    );
  }

}
