import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ImageResponse, ImageService } from '../../service/image/image-service';

@Component({
  selector: 'app-upload-image',
  imports: [CommonModule],
  templateUrl: './upload-image.html',
  styleUrl: './upload-image.css'
})
export class UploadImage {


   selectedFile: File | null = null;
  response: ImageResponse | null = null;
  loading = false;
  error: string | null = null;

  constructor(private imageService: ImageService) {}

  onFileSelected(event: Event) {
    const input = event.target as HTMLInputElement;
    if (input.files && input.files.length > 0) {
      this.selectedFile = input.files[0];
      this.response = null;
      this.error = null;
    }
  }

  onUpload() {
    if (!this.selectedFile) return;

    this.loading = true;
    this.imageService.processImage(this.selectedFile).subscribe({
      next: (res) => {
        this.response = res;
        this.loading = false;
      },
      error: (err) => {
        this.error = 'Error al procesar la imagen';
        console.error(err);
        this.loading = false;
      }
    });
  }


}
