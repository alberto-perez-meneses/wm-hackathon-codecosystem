import { inject, Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

export interface ImageResponse {
  caption: string;
  vqa_answers: string[];
}

@Injectable({
  providedIn: 'root'
})
export class ImageService {
  private http = inject(HttpClient);

  processImage(file: File): Observable<ImageResponse> {
    const formData = new FormData();
    formData.append('image', file);

    return this.http.post<ImageResponse>(
      'http://localhost:5000/process_image',
      formData
    );
  }

}
