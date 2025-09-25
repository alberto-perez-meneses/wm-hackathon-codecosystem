import { Injectable } from '@nestjs/common';
import { throws } from 'assert';


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


@Injectable()
export class LayoutService {


  public stores :StoreList[]= [
    { id: 'plaza-central', name: 'Plaza Central', address: 'Av. Revolución 1234, Centro' },
    { id: 'norte', name: 'Sucursal Norte', address: 'Blvd. Norte 567, Col. Industrial' },
    { id: 'sur', name: 'Sucursal Sur', address: 'Av. Sur 890, Col. Residencial' },
    { id: 'oriente', name: 'Sucursal Oriente', address: 'Calle Oriente 123, Col. Popular' },
    { id: 'sucursal-lago', name: 'Sucursal Lago', address: 'Calle Lago 456, Col. Jardines' },
  ];

  storeLayouts: StoreLayout[] = [
    {
      id: "plaza-central",
      name: "Plaza Central",
      mapHeight: 680,
      aisles: [
        { id: "1A", name: "Entrada", x: 50, y: 20, width: 100, height: 30, category: "entrance" },
        { id: "2A", name: "Frutas y Verduras", x: 20, y: 80, width: 80, height: 40, category: "produce" },
        { id: "2B", name: "Carnes", x: 120, y: 80, width: 80, height: 40, category: "meat" },
        { id: "3A", name: "Farmacia", x: 20, y: 140, width: 60, height: 40, category: "pharmacy" },
        { id: "15A", name: "Electrónica", x: 220, y: 560, width: 80, height: 40, category: "electronics" },
        { id: "16A", name: "Cajas", x: 50, y: 620, width: 150, height: 30, category: "checkout" },
      ],
    },
    {
      id: "norte",
      name: "Sucursal Norte",
      mapHeight: 580,
      aisles: [
        { id: "1A", name: "Entrada", x: 40, y: 15, width: 120, height: 25, category: "entrance" },
        { id: "2A", name: "Alimentos", x: 20, y: 60, width: 70, height: 35, category: "produce" },
        { id: "3A", name: "Farmacia", x: 200, y: 60, width: 60, height: 35, category: "pharmacy" },
        { id: "15A", name: "Electrónica", x: 120, y: 180, width: 80, height: 40, category: "electronics" },
        { id: "16A", name: "Cajas", x: 60, y: 240, width: 120, height: 25, category: "checkout" },
      ],
    },
    {
      id: "sur",
      name: "Sucursal Sur",
      mapHeight: 600,
      aisles: [
        { id: "1A", name: "Entrada", x: 30, y: 10, width: 110, height: 20, category: "entrance" },
        { id: "2A", name: "Bebidas", x: 10, y: 50, width: 70, height: 30, category: "beverages" },
        { id: "2B", name: "Lácteos", x: 90, y: 50, width: 70, height: 30, category: "dairy" },
        { id: "3A", name: "Panadería", x: 10, y: 100, width: 60, height: 30, category: "bakery" },
        { id: "15A", name: "Juguetes", x: 100, y: 180, width: 80, height: 40, category: "toys" },
        { id: "16A", name: "Cajas", x: 40, y: 250, width: 100, height: 20, category: "checkout" },
      ],
    },
    {
      id: "oriente",
      name: "Sucursal Oriente",
      mapHeight: 550,
      aisles: [
        { id: "1A", name: "Entrada", x: 20, y: 10, width: 100, height: 20, category: "entrance" },
        { id: "2A", name: "Congelados", x: 10, y: 50, width: 60, height: 30, category: "frozen" },
        { id: "2B", name: "Abarrotes", x: 80, y: 50, width: 60, height: 30, category: "grocery" },
        { id: "3A", name: "Hogar", x: 10, y: 100, width: 50, height: 30, category: "home" },
        { id: "15A", name: "Ropa", x: 70, y: 180, width: 70, height: 40, category: "clothing" },
        { id: "16A", name: "Cajas", x: 30, y: 250, width: 90, height: 20, category: "checkout" },
      ],
    },
    {
      id: "sucursal-lago",
      name: "Sucursal lago",
      mapHeight: 550,
      aisles: [
        { id: "1A", name: "Entrada", x: 30, y: 10, width: 100, height: 20, category: "entrance" },
        { id: "2A", name: "Congelados", x: 15, y: 50, width: 60, height: 30, category: "frozen" },
        { id: "2B", name: "Abarrotes", x: 80, y: 50, width: 60, height: 30, category: "grocery" },
        { id: "3A", name: "Hogar", x: 10, y: 100, width: 50, height: 30, category: "home" },
        { id: "15A", name: "Ropa", x: 70, y: 180, width: 70, height: 40, category: "clothing" },
        { id: "16A", name: "Cajas", x: 30, y: 250, width: 90, height: 20, category: "checkout" },
        { id: "15A", name: "Juguetes", x: 100, y: 280, width: 80, height: 40, category: "toys" },
      ],

    }
  ];


  getStoreList(){
    return this.stores;
  }

    getStore(storeId: string) {
    return this.storeLayouts.find((store) => store.id === storeId) || this.storeLayouts[0]
  }


}
