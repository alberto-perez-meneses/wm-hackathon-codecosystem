import { Injectable } from '@nestjs/common';

@Injectable()
export class CategoriesService {

      categories = [
    { name: 'Farmacia', icon: 'pill', color: 'bg-red-50 text-red-600 border-red-200' },
    { name: 'Abarrotes', icon: 'package', color: 'bg-green-50 text-green-600 border-green-200' },
    { name: 'Limpieza', icon: 'sparkles', color: 'bg-blue-50 text-blue-600 border-blue-200' },
    { name: 'Electrónica', icon: 'zap', color: 'bg-purple-50 text-purple-600 border-purple-200' },
  ];

    getCategories(){
        return this.categories;
    }
}
