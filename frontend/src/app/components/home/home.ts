import { Component, effect, inject, signal } from '@angular/core';
import { Router } from '@angular/router';
import {FormsModule} from '@angular/forms';
import { Search } from '../search/search';
import { Store } from '../../service/store/store';
import { AsyncPipe } from '@angular/common';
import { Observable } from 'rxjs';
import { UploadImage } from '../upload-image/upload-image';

interface StoreList {
  id :string
  name : string
  address : string
}

@Component({
  selector: 'app-home',
  imports: [ FormsModule , Search  , AsyncPipe ],
  templateUrl: './home.html',
  styleUrl: './home.css'
})
export class Home {


  private storeService = inject(Store);

  stores$: Observable<StoreList[]> | undefined;
  selectedStoreId: string | null = null;
  
  constructor() {
    effect(() => {
      this.stores$ = this.storeService.getStoreList();
    });
    
  }

  onStoreSelected(storeId: any) {
    // Manejar el evento de cambio del select
    this.selectedStoreId = storeId.target.value;
  }


}
