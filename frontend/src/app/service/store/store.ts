import { HttpClient } from '@angular/common/http';
import { inject, Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from '../../../environments/environment';

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

interface StoreList {
  id :string
  name : string
  address : string
}


@Injectable({
  providedIn: 'root'
})
export class Store {

    private http = inject(HttpClient);
    
   getStoreList = (): Observable<StoreList[]> => {
    return this.http.get<StoreList[]>(`${environment.storeUrl}/v1/store/list`,
      {
        priority:'low'
      }
    );
  }

  getStore = (storeId: string): Observable<StoreLayout> => {
    return this.http.get<StoreLayout>(`${environment.storeUrl}/v1/store/${storeId}`,
      {
        priority:'low'
      }
    );
  }


}
