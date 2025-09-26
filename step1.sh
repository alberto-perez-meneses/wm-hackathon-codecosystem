#!/bin/sh


curl -X 'PUT' \
  'http://localhost:3001/v1/catalog/index' \
  -H 'accept: */*' \
  -H 'Content-Type: application/json' \
  -d '[
  {
    "name": "Paracetamol 500mg",
    "slug": "paracetamol-500mg",
    "category": "Farmacia",
    "icon": "pill",
    "price": 25.0,
    "stores": ["plaza-central", "sur"],
    "image": "https://example.com/images/paracetamol.jpg",
    "description": "Tabletas analgésicas y antipiréticas para aliviar dolor y fiebre."
  },
  {
    "name": "Cereal Integral",
    "slug": "cereal-integral",
    "category": "Abarrotes",
    "icon": "package",
    "price": 45.0,
    "stores": ["norte", "oriente"],
    "image": "https://example.com/images/cereal-integral.jpg",
    "description": "Cereal saludable rico en fibra y nutrientes esenciales."
  },
  {
    "name": "Detergente Líquido",
    "slug": "detergente-liquido",
    "category": "Limpieza",
    "icon": "sparkles",
    "price": 30.0,
    "stores": ["plaza-central", "norte"],
    "image": "https://example.com/images/detergente.jpg",
    "description": "Detergente líquido concentrado para ropa limpia y fresca."
  },
  {
    "name": "Audífonos Bluetooth",
    "slug": "audifonos-bluetooth",
    "category": "Electrónica",
    "icon": "zap",
    "price": 150.0,
    "stores": ["oriente"],
    "image": "https://example.com/images/audifonos.jpg",
    "description": "Audífonos inalámbricos con alta calidad de sonido."
  },
  {
    "name": "Ibuprofeno 200mg",
    "slug": "ibuprofeno-200mg",
    "category": "Farmacia",
    "icon": "pill",
    "price": 20.0,
    "stores": ["plaza-central", "oriente"],
    "image": "https://example.com/images/ibuprofeno.jpg",
    "description": "Antiinflamatorio y analgésico de rápida acción."
  },
  {
    "name": "Leche Deslactosada",
    "slug": "leche-deslactosada",
    "category": "Abarrotes",
    "icon": "package",
    "price": 35.0,
    "stores": ["sur", "plaza-central"],
    "image": "https://example.com/images/leche.jpg",
    "description": "Leche deslactosada ideal para personas con intolerancia a la lactosa."
  },
  {
    "name": "Limpiador Multiusos",
    "slug": "limpiador-multiusos",
    "category": "Limpieza",
    "icon": "sparkles",
    "price": 28.0,
    "stores": ["norte"],
    "image": "https://example.com/images/limpiador.jpg",
    "description": "Producto multiusos para limpieza de superficies del hogar."
  },
  {
    "name": "Cargador USB-C",
    "slug": "cargador-usb-c",
    "category": "Electrónica",
    "icon": "zap",
    "price": 120.0,
    "stores": ["plaza-central", "norte", "sur"],
    "image": "https://example.com/images/cargador.jpg",
    "description": "Cargador rápido compatible con dispositivos USB-C."
  },
  {
    "name": "Vitamina C 1g",
    "slug": "vitamina-c-1g",
    "category": "Farmacia",
    "icon": "pill",
    "price": 32.0,
    "stores": ["sur", "oriente"],
    "image": "https://example.com/images/vitamina-c.jpg",
    "description": "Suplemento vitamínico para fortalecer el sistema inmunológico."
  },
  {
    "name": "Arroz Integral",
    "slug": "arroz-integral",
    "category": "Abarrotes",
    "icon": "package",
    "price": 42.0,
    "stores": ["plaza-central"],
    "image": "https://example.com/images/arroz.jpg",
    "description": "Arroz integral rico en fibra para una dieta balanceada."
  },
  {
    "name": "Jabón Antibacterial",
    "slug": "jabon-antibacterial",
    "category": "Limpieza",
    "icon": "sparkles",
    "price": 18.0,
    "stores": ["norte", "sur"],
    "image": "https://example.com/images/jabon.jpg",
    "description": "Jabón líquido con propiedades antibacteriales."
  },
  {
    "name": "Bocina Portátil",
    "slug": "bocina-portatil",
    "category": "Electrónica",
    "icon": "zap",
    "price": 300.0,
    "stores": ["plaza-central", "oriente"],
    "image": "https://example.com/images/bocina.jpg",
    "description": "Bocina inalámbrica con sonido envolvente y batería de larga duración."
  },
  {
    "name": "Omeprazol 20mg",
    "slug": "omeprazol-20mg",
    "category": "Farmacia",
    "icon": "pill",
    "price": 40.0,
    "stores": ["norte"],
    "image": "https://example.com/images/omeprazol.jpg",
    "description": "Medicamento para el tratamiento de la acidez estomacal."
  },
  {
    "name": "Aceite de Oliva",
    "slug": "aceite-oliva",
    "category": "Abarrotes",
    "icon": "package",
    "price": 80.0,
    "stores": ["oriente", "sur"],
    "image": "https://example.com/images/aceite.jpg",
    "description": "Aceite de oliva extra virgen ideal para cocina saludable."
  },
  {
    "name": "Cloro Concentrado",
    "slug": "cloro-concentrado",
    "category": "Limpieza",
    "icon": "sparkles",
    "price": 22.0,
    "stores": ["plaza-central", "norte"],
    "image": "https://example.com/images/cloro.jpg",
    "description": "Cloro concentrado para desinfección profunda."
  },
  {
    "name": "Mouse Inalámbrico",
    "slug": "mouse-inalambrico",
    "category": "Electrónica",
    "icon": "zap",
    "price": 110.0,
    "stores": ["sur"],
    "image": "https://example.com/images/mouse.jpg",
    "description": "Mouse ergonómico inalámbrico con sensor óptico preciso."
  },
  {
    "name": "Amoxicilina 500mg",
    "slug": "amoxicilina-500mg",
    "category": "Farmacia",
    "icon": "pill",
    "price": 55.0,
    "stores": ["oriente", "plaza-central"],
    "image": "https://example.com/images/amoxicilina.jpg",
    "description": "Antibiótico para el tratamiento de infecciones bacterianas."
  },
  {
    "name": "Frijol Negro",
    "slug": "frijol-negro",
    "category": "Abarrotes",
    "icon": "package",
    "price": 38.0,
    "stores": ["norte"],
    "image": "https://example.com/images/frijol.jpg",
    "description": "Frijol negro rico en proteínas y fibra."
  },
  {
    "name": "Limpiavidrios",
    "slug": "limpiavidrios",
    "category": "Limpieza",
    "icon": "sparkles",
    "price": 19.0,
    "stores": ["plaza-central", "oriente"],
    "image": "https://example.com/images/limpiavidrios.jpg",
    "description": "Limpiador especializado para vidrios y espejos."
  },
  {
    "name": "Teclado Mecánico",
    "slug": "teclado-mecanico",
    "category": "Electrónica",
    "icon": "zap",
    "price": 450.0,
    "stores": ["norte", "sur"],
    "image": "https://example.com/images/teclado.jpg",
    "description": "Teclado mecánico retroiluminado para gamers y programadores."
  },
  {
    "name": "Loratadina 10mg",
    "slug": "loratadina-10mg",
    "category": "Farmacia",
    "icon": "pill",
    "price": 28.0,
    "stores": ["plaza-central"],
    "image": "https://example.com/images/loratadina.jpg",
    "description": "Antihistamínico eficaz contra alergias."
  },
  {
    "name": "Pasta Integral",
    "slug": "pasta-integral",
    "category": "Abarrotes",
    "icon": "package",
    "price": 33.0,
    "stores": ["sur", "oriente"],
    "image": "https://example.com/images/pasta.jpg",
    "description": "Pasta integral rica en fibra y de cocción rápida."
  },
  {
    "name": "Desinfectante Aerosol",
    "slug": "desinfectante-aerosol",
    "category": "Limpieza",
    "icon": "sparkles",
    "price": 27.0,
    "stores": ["norte"],
    "image": "https://example.com/images/desinfectante.jpg",
    "description": "Desinfectante en aerosol para eliminar virus y bacterias."
  },
  {
    "name": "Smartwatch Deportivo",
    "slug": "smartwatch-deportivo",
    "category": "Electrónica",
    "icon": "zap",
    "price": 900.0,
    "stores": ["plaza-central", "norte"],
    "image": "https://example.com/images/smartwatch.jpg",
    "description": "Reloj inteligente con monitoreo de actividad física."
  },
  {
    "name": "Antigripal Compuesto",
    "slug": "antigripal-compuesto",
    "category": "Farmacia",
    "icon": "pill",
    "price": 48.0,
    "stores": ["sur", "plaza-central"],
    "image": "https://example.com/images/antigripal.jpg",
    "description": "Medicamento para aliviar síntomas de gripe y resfriado."
  },
  {
    "name": "Azúcar Morena",
    "slug": "azucar-morena",
    "category": "Abarrotes",
    "icon": "package",
    "price": 29.0,
    "stores": ["oriente"],
    "image": "https://example.com/images/azucar.jpg",
    "description": "Azúcar morena natural sin refinar."
  },
  {
    "name": "Esponjas Multiuso",
    "slug": "esponjas-multiuso",
    "category": "Limpieza",
    "icon": "sparkles",
    "price": 15.0,
    "stores": ["plaza-central", "sur"],
    "image": "https://example.com/images/esponjas.jpg",
    "description": "Esponjas resistentes ideales para limpieza del hogar."
  },
  {
    "name": "Laptop Ultraligera",
    "slug": "laptop-ultraligera",
    "category": "Electrónica",
    "icon": "zap",
    "price": 15000.0,
    "stores": ["norte", "oriente"],
    "image": "https://example.com/images/laptop.jpg",
    "description": "Laptop ultraligera de alto rendimiento con pantalla HD."
  }
]
'