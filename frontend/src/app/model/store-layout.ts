import { Aisle } from "./aisle"

export interface StoreLayout {
  id: string
  name: string
  aisles: Aisle[]
  mapHeight: number
}