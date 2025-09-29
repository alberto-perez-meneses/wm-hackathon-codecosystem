#!/bin/sh


curl -X 'PUT' \
  'http://localhost:3001/v1/catalog/index' \
  -H 'accept: */*' \
  -H 'Content-Type: application/json' \
  -d '[
    {
        "category": "Farmacia",
        "description": "Tabletas analgésicas y antipiréticas para aliviar dolor y fiebre.",
        "icon": "pill",
        "id": "0",
        "image": "https://example.com/images/paracetamol.jpg",
        "name": "Paracetamol 500mg",
        "price": 25,
        "slug": "paracetamol-500mg",
        "stores": [
            "plaza-central",
            "sur"
        ]
    },
    {
        "category": "Abarrotes",
        "description": "Cereal saludable rico en fibra y nutrientes esenciales.",
        "icon": "package",
        "id": "1",
        "image": "https://example.com/images/cereal-integral.jpg",
        "name": "Cereal Integral",
        "price": 45,
        "slug": "cereal-integral",
        "stores": [
            "norte",
            "oriente"
        ]
    },
    {
        "category": "Limpieza",
        "description": "Detergente líquido concentrado para ropa limpia y fresca.",
        "icon": "sparkles",
        "id": "2",
        "image": "https://example.com/images/detergente.jpg",
        "name": "Detergente Líquido",
        "price": 30,
        "slug": "detergente-liquido",
        "stores": [
            "plaza-central",
            "norte"
        ]
    },
    {
        "category": "Electrónica",
        "description": "Audífonos inalámbricos con alta calidad de sonido.",
        "icon": "zap",
        "id": "3",
        "image": "https://example.com/images/audifonos.jpg",
        "name": "Audífonos Bluetooth",
        "price": 150,
        "slug": "audifonos-bluetooth",
        "stores": [
            "oriente"
        ]
    },
    {
        "category": "Farmacia",
        "description": "Antiinflamatorio y analgésico de rápida acción.",
        "icon": "pill",
        "id": "4",
        "image": "https://example.com/images/ibuprofeno.jpg",
        "name": "Ibuprofeno 200mg",
        "price": 20,
        "slug": "ibuprofeno-200mg",
        "stores": [
            "plaza-central",
            "oriente"
        ]
    },
    {
        "category": "Abarrotes",
        "description": "Leche deslactosada ideal para personas con intolerancia a la lactosa.",
        "icon": "package",
        "id": "5",
        "image": "https://example.com/images/leche.jpg",
        "name": "Leche Deslactosada",
        "price": 35,
        "slug": "leche-deslactosada",
        "stores": [
            "sur",
            "plaza-central"
        ]
    },
    {
        "category": "Limpieza",
        "description": "Producto multiusos para limpieza de superficies del hogar.",
        "icon": "sparkles",
        "id": "6",
        "image": "https://example.com/images/limpiador.jpg",
        "name": "Limpiador Multiusos",
        "price": 28,
        "slug": "limpiador-multiusos",
        "stores": [
            "norte"
        ]
    },
    {
        "category": "Electrónica",
        "description": "Cargador rápido compatible con dispositivos USB-C.",
        "icon": "zap",
        "id": "7",
        "image": "https://example.com/images/cargador.jpg",
        "name": "Cargador USB-C",
        "price": 120,
        "slug": "cargador-usb-c",
        "stores": [
            "plaza-central",
            "norte",
            "sur"
        ]
    },
    {
        "category": "Farmacia",
        "description": "Suplemento vitamínico para fortalecer el sistema inmunológico.",
        "icon": "pill",
        "id": "8",
        "image": "https://example.com/images/vitamina-c.jpg",
        "name": "Vitamina C 1g",
        "price": 32,
        "slug": "vitamina-c-1g",
        "stores": [
            "sur",
            "oriente"
        ]
    },
    {
        "category": "Abarrotes",
        "description": "Arroz integral rico en fibra para una dieta balanceada.",
        "icon": "package",
        "id": "9",
        "image": "https://example.com/images/arroz.jpg",
        "name": "Arroz Integral",
        "price": 42,
        "slug": "arroz-integral",
        "stores": [
            "plaza-central"
        ]
    },
    {
        "category": "Limpieza",
        "description": "Jabón líquido con propiedades antibacteriales.",
        "icon": "sparkles",
        "id": "10",
        "image": "https://example.com/images/jabon.jpg",
        "name": "Jabón Antibacterial",
        "price": 18,
        "slug": "jabon-antibacterial",
        "stores": [
            "norte",
            "sur"
        ]
    },
    {
        "category": "Electrónica",
        "description": "Bocina inalámbrica con sonido envolvente y batería de larga duración.",
        "icon": "zap",
        "id": "11",
        "image": "https://example.com/images/bocina.jpg",
        "name": "Bocina Portátil",
        "price": 300,
        "slug": "bocina-portatil",
        "stores": [
            "plaza-central",
            "oriente"
        ]
    },
    {
        "category": "Farmacia",
        "description": "Medicamento para el tratamiento de la acidez estomacal.",
        "icon": "pill",
        "id": "12",
        "image": "https://example.com/images/omeprazol.jpg",
        "name": "Omeprazol 20mg",
        "price": 40,
        "slug": "omeprazol-20mg",
        "stores": [
            "norte"
        ]
    },
    {
        "category": "Abarrotes",
        "description": "Aceite de oliva extra virgen ideal para cocina saludable.",
        "icon": "package",
        "id": "13",
        "image": "https://example.com/images/aceite.jpg",
        "name": "Aceite de Oliva",
        "price": 80,
        "slug": "aceite-oliva",
        "stores": [
            "oriente",
            "sur"
        ]
    },
    {
        "category": "Limpieza",
        "description": "Cloro concentrado para desinfección profunda.",
        "icon": "sparkles",
        "id": "14",
        "image": "https://example.com/images/cloro.jpg",
        "name": "Cloro Concentrado",
        "price": 22,
        "slug": "cloro-concentrado",
        "stores": [
            "plaza-central",
            "norte"
        ]
    },
    {
        "category": "Electrónica",
        "description": "Mouse ergonómico inalámbrico con sensor óptico preciso.",
        "icon": "zap",
        "id": "15",
        "image": "https://example.com/images/mouse.jpg",
        "name": "Mouse Inalámbrico",
        "price": 110,
        "slug": "mouse-inalambrico",
        "stores": [
            "sur"
        ]
    },
    {
        "category": "Farmacia",
        "description": "Antibiótico para el tratamiento de infecciones bacterianas.",
        "icon": "pill",
        "id": "16",
        "image": "https://example.com/images/amoxicilina.jpg",
        "name": "Amoxicilina 500mg",
        "price": 55,
        "slug": "amoxicilina-500mg",
        "stores": [
            "oriente",
            "plaza-central"
        ]
    },
    {
        "category": "Abarrotes",
        "description": "Frijol negro rico en proteínas y fibra.",
        "icon": "package",
        "id": "17",
        "image": "https://example.com/images/frijol.jpg",
        "name": "Frijol Negro",
        "price": 38,
        "slug": "frijol-negro",
        "stores": [
            "norte"
        ]
    },
    {
        "category": "Limpieza",
        "description": "Limpiador especializado para vidrios y espejos.",
        "icon": "sparkles",
        "id": "18",
        "image": "https://example.com/images/limpiavidrios.jpg",
        "name": "Limpiavidrios",
        "price": 19,
        "slug": "limpiavidrios",
        "stores": [
            "plaza-central",
            "oriente"
        ]
    },
    {
        "category": "Electrónica",
        "description": "Teclado mecánico retroiluminado para gamers y programadores.",
        "icon": "zap",
        "id": "19",
        "image": "https://example.com/images/teclado.jpg",
        "name": "Teclado Mecánico",
        "price": 450,
        "slug": "teclado-mecanico",
        "stores": [
            "norte",
            "sur"
        ]
    },
    {
        "category": "Farmacia",
        "description": "Antihistamínico eficaz contra alergias.",
        "icon": "pill",
        "id": "20",
        "image": "https://example.com/images/loratadina.jpg",
        "name": "Loratadina 10mg",
        "price": 28,
        "slug": "loratadina-10mg",
        "stores": [
            "plaza-central"
        ]
    },
    {
        "category": "Abarrotes",
        "description": "Pasta integral rica en fibra y de cocción rápida.",
        "icon": "package",
        "id": "21",
        "image": "https://example.com/images/pasta.jpg",
        "name": "Pasta Integral",
        "price": 33,
        "slug": "pasta-integral",
        "stores": [
            "sur",
            "oriente"
        ]
    },
    {
        "category": "Limpieza",
        "description": "Desinfectante en aerosol para eliminar virus y bacterias.",
        "icon": "sparkles",
        "id": "22",
        "image": "https://example.com/images/desinfectante.jpg",
        "name": "Desinfectante Aerosol",
        "price": 27,
        "slug": "desinfectante-aerosol",
        "stores": [
            "norte"
        ]
    },
    {
        "category": "Electrónica",
        "description": "Reloj inteligente con monitoreo de actividad física.",
        "icon": "zap",
        "id": "23",
        "image": "https://example.com/images/smartwatch.jpg",
        "name": "Smartwatch Deportivo",
        "price": 900,
        "slug": "smartwatch-deportivo",
        "stores": [
            "plaza-central",
            "norte"
        ]
    },
    {
        "category": "Farmacia",
        "description": "Medicamento para aliviar síntomas de gripe y resfriado.",
        "icon": "pill",
        "id": "24",
        "image": "https://example.com/images/antigripal.jpg",
        "name": "Antigripal Compuesto",
        "price": 48,
        "slug": "antigripal-compuesto",
        "stores": [
            "sur",
            "plaza-central"
        ]
    },
    {
        "category": "Abarrotes",
        "description": "Azúcar morena natural sin refinar.",
        "icon": "package",
        "id": "25",
        "image": "https://example.com/images/azucar.jpg",
        "name": "Azúcar Morena",
        "price": 29,
        "slug": "azucar-morena",
        "stores": [
            "oriente"
        ]
    },
    {
        "category": "Limpieza",
        "description": "Esponjas resistentes ideales para limpieza del hogar.",
        "icon": "sparkles",
        "id": "26",
        "image": "https://example.com/images/esponjas.jpg",
        "name": "Esponjas Multiuso",
        "price": 15,
        "slug": "esponjas-multiuso",
        "stores": [
            "plaza-central",
            "sur"
        ]
    },
    {
        "category": "Electrónica",
        "description": "Laptop ultraligera de alto rendimiento con pantalla HD.",
        "icon": "zap",
        "id": "27",
        "image": "https://example.com/images/laptop.jpg",
        "name": "Laptop Ultraligera",
        "price": 15000,
        "slug": "laptop-ultraligera",
        "stores": [
            "norte",
            "oriente"
        ]
    },
    {
        "category": "Farmacia",
        "description": "Tabletas analgésicas y antipiréticas para aliviar dolor y fiebre.",
        "descriptionEn": "Analgesic and antipyretic tablets to relieve pain and fever.",
        "existenceOnStore": [
            {
                "plaza-central": 5
            },
            {
                "sur": 2
            }
        ],
        "icon": "pill",
        "id": "28",
        "image": "https://example.com/images/paracetamol.jpg",
        "name": "Paracetamol 500mg",
        "price": 25,
        "slug": "paracetamol-500mg",
        "stores": [
            "plaza-central",
            "sur"
        ]
    },
    {
        "category": "Abarrotes",
        "description": "Cereal saludable rico en fibra y nutrientes esenciales.",
        "descriptionEn": "Healthy cereal rich in fiber and essential nutrients.",
        "existenceOnStore": [
            {
                "norte": 1
            },
            {
                "oriente": 8
            }
        ],
        "icon": "package",
        "id": "29",
        "image": "https://example.com/images/cereal-integral.jpg",
        "name": "Cereal Integral",
        "price": 45,
        "slug": "cereal-integral",
        "stores": [
            "norte",
            "oriente"
        ]
    },
    {
        "category": "Limpieza",
        "description": "Detergente líquido concentrado para ropa limpia y fresca.",
        "descriptionEn": "Concentrated liquid detergent for clean and fresh clothes.",
        "existenceOnStore": [
            {
                "plaza-central": 8
            },
            {
                "norte": 11
            }
        ],
        "icon": "sparkles",
        "id": "30",
        "image": "https://example.com/images/detergente.jpg",
        "name": "Detergente Líquido",
        "price": 30,
        "slug": "detergente-liquido",
        "stores": [
            "plaza-central",
            "norte"
        ]
    },
    {
        "category": "Electrónica",
        "description": "Audífonos inalámbricos con alta calidad de sonido.",
        "descriptionEn": "Wireless headphones with high sound quality.",
        "existenceOnStore": [
            {
                "oriente": 13
            }
        ],
        "icon": "zap",
        "id": "31",
        "image": "https://example.com/images/audifonos.jpg",
        "name": "Audífonos Bluetooth",
        "price": 150,
        "slug": "audifonos-bluetooth",
        "stores": [
            "oriente"
        ]
    },
    {
        "category": "Farmacia",
        "description": "Antiinflamatorio y analgésico de rápida acción.",
        "descriptionEn": "Fast-acting anti-inflammatory and pain reliever.",
        "existenceOnStore": [
            {
                "plaza-central": 5
            },
            {
                "oriente": 0
            }
        ],
        "icon": "pill",
        "id": "32",
        "image": "https://example.com/images/ibuprofeno.jpg",
        "name": "Ibuprofeno 200mg",
        "price": 20,
        "slug": "ibuprofeno-200mg",
        "stores": [
            "plaza-central",
            "oriente"
        ]
    },
    {
        "category": "Farmacia",
        "description": "Tabletas analgésicas y antipiréticas para aliviar dolor y fiebre.",
        "descriptionEn": "Analgesic and antipyretic tablets to relieve pain and fever.",
        "existenceOnStore": [
            {
                "plaza-central": 9
            },
            {
                "sur": 8
            }
        ],
        "icon": "pill",
        "id": "33",
        "image": "https://example.com/images/paracetamol.jpg",
        "name": "Paracetamol 500mg",
        "price": 25,
        "slug": "paracetamol-500mg",
        "stores": [
            "plaza-central",
            "sur"
        ]
    },
    {
        "category": "Abarrotes",
        "description": "Cereal saludable rico en fibra y nutrientes esenciales.",
        "descriptionEn": "Healthy cereal rich in fiber and essential nutrients.",
        "existenceOnStore": [
            {
                "norte": 0
            },
            {
                "oriente": 15
            }
        ],
        "icon": "package",
        "id": "34",
        "image": "https://example.com/images/cereal-integral.jpg",
        "name": "Cereal Integral",
        "price": 45,
        "slug": "cereal-integral",
        "stores": [
            "norte",
            "oriente"
        ]
    },
    {
        "category": "Limpieza",
        "description": "Detergente líquido concentrado para ropa limpia y fresca.",
        "descriptionEn": "Concentrated liquid detergent for clean and fresh clothes.",
        "existenceOnStore": [
            {
                "plaza-central": 0
            },
            {
                "norte": 2
            }
        ],
        "icon": "sparkles",
        "id": "35",
        "image": "https://example.com/images/detergente.jpg",
        "name": "Detergente Líquido",
        "price": 30,
        "slug": "detergente-liquido",
        "stores": [
            "plaza-central",
            "norte"
        ]
    },
    {
        "category": "Electrónica",
        "description": "Audífonos inalámbricos con alta calidad de sonido.",
        "descriptionEn": "Wireless headphones with high sound quality.",
        "existenceOnStore": [
            {
                "oriente": 8
            }
        ],
        "icon": "zap",
        "id": "36",
        "image": "https://example.com/images/audifonos.jpg",
        "name": "Audífonos Bluetooth",
        "price": 150,
        "slug": "audifonos-bluetooth",
        "stores": [
            "oriente"
        ]
    },
    {
        "category": "Farmacia",
        "description": "Antiinflamatorio y analgésico de rápida acción.",
        "descriptionEn": "Fast-acting anti-inflammatory and pain reliever.",
        "existenceOnStore": [
            {
                "plaza-central": 9
            },
            {
                "oriente": 9
            }
        ],
        "icon": "pill",
        "id": "37",
        "image": "https://example.com/images/ibuprofeno.jpg",
        "name": "Ibuprofeno 200mg",
        "price": 20,
        "slug": "ibuprofeno-200mg",
        "stores": [
            "plaza-central",
            "oriente"
        ]
    },
    {
        "category": "Abarrotes",
        "description": "Leche deslactosada ideal para personas con intolerancia a la lactosa.",
        "descriptionEn": "Lactose-free milk ideal for people with lactose intolerance.",
        "existenceOnStore": [
            {
                "sur": 13
            },
            {
                "plaza-central": 1
            }
        ],
        "icon": "package",
        "id": "38",
        "image": "https://example.com/images/leche.jpg",
        "name": "Leche Deslactosada",
        "price": 35,
        "slug": "leche-deslactosada",
        "stores": [
            "sur",
            "plaza-central"
        ]
    },
    {
        "category": "Limpieza",
        "description": "Producto multiusos para limpieza de superficies del hogar.",
        "descriptionEn": "Multipurpose product for cleaning household surfaces.",
        "existenceOnStore": [
            {
                "norte": 7
            }
        ],
        "icon": "sparkles",
        "id": "39",
        "image": "https://example.com/images/limpiador.jpg",
        "name": "Limpiador Multiusos",
        "price": 28,
        "slug": "limpiador-multiusos",
        "stores": [
            "norte"
        ]
    },
    {
        "category": "Electrónica",
        "description": "Cargador rápido compatible con dispositivos USB-C.",
        "descriptionEn": "Fast charger compatible with USB-C devices.",
        "existenceOnStore": [
            {
                "plaza-central": 12
            },
            {
                "norte": 6
            },
            {
                "sur": 9
            }
        ],
        "icon": "zap",
        "id": "40",
        "image": "https://example.com/images/cargador.jpg",
        "name": "Cargador USB-C",
        "price": 120,
        "slug": "cargador-usb-c",
        "stores": [
            "plaza-central",
            "norte",
            "sur"
        ]
    },
    {
        "category": "Farmacia",
        "description": "Suplemento vitamínico para fortalecer el sistema inmunológico.",
        "descriptionEn": "Vitamin supplement to strengthen the immune system.",
        "existenceOnStore": [
            {
                "sur": 4
            },
            {
                "oriente": 9
            }
        ],
        "icon": "pill",
        "id": "41",
        "image": "https://example.com/images/vitamina-c.jpg",
        "name": "Vitamina C 1g",
        "price": 32,
        "slug": "vitamina-c-1g",
        "stores": [
            "sur",
            "oriente"
        ]
    },
    {
        "category": "Abarrotes",
        "description": "Arroz integral rico en fibra para una dieta balanceada.",
        "descriptionEn": "Brown rice rich in fiber for a balanced diet.",
        "existenceOnStore": [
            {
                "plaza-central": 3
            }
        ],
        "icon": "package",
        "id": "42",
        "image": "https://example.com/images/arroz.jpg",
        "name": "Arroz Integral",
        "price": 42,
        "slug": "arroz-integral",
        "stores": [
            "plaza-central"
        ]
    },
    {
        "category": "Limpieza",
        "description": "Jabón líquido con propiedades antibacteriales.",
        "descriptionEn": "Liquid soap with antibacterial properties.",
        "existenceOnStore": [
            {
                "norte": 0
            },
            {
                "sur": 1
            }
        ],
        "icon": "sparkles",
        "id": "43",
        "image": "https://example.com/images/jabon.jpg",
        "name": "Jabón Antibacterial",
        "price": 18,
        "slug": "jabon-antibacterial",
        "stores": [
            "norte",
            "sur"
        ]
    },
    {
        "category": "Electrónica",
        "description": "Bocina inalámbrica con sonido envolvente y batería de larga duración.",
        "descriptionEn": "Wireless speaker with surround sound and long battery life.",
        "existenceOnStore": [
            {
                "plaza-central": 14
            },
            {
                "oriente": 1
            }
        ],
        "icon": "zap",
        "id": "44",
        "image": "https://example.com/images/bocina.jpg",
        "name": "Bocina Portátil",
        "price": 300,
        "slug": "bocina-portatil",
        "stores": [
            "plaza-central",
            "oriente"
        ]
    },
    {
        "category": "Farmacia",
        "description": "Medicamento para el tratamiento de la acidez estomacal.",
        "descriptionEn": "Medicine for the treatment of stomach acidity.",
        "existenceOnStore": [
            {
                "norte": 2
            }
        ],
        "icon": "pill",
        "id": "45",
        "image": "https://example.com/images/omeprazol.jpg",
        "name": "Omeprazol 20mg",
        "price": 40,
        "slug": "omeprazol-20mg",
        "stores": [
            "norte"
        ]
    },
    {
        "category": "Abarrotes",
        "description": "Aceite de oliva extra virgen ideal para cocina saludable.",
        "descriptionEn": "Extra virgin olive oil ideal for healthy cooking.",
        "existenceOnStore": [
            {
                "oriente": 4
            },
            {
                "sur": 11
            }
        ],
        "icon": "package",
        "id": "46",
        "image": "https://example.com/images/aceite.jpg",
        "name": "Aceite de Oliva",
        "price": 80,
        "slug": "aceite-oliva",
        "stores": [
            "oriente",
            "sur"
        ]
    },
    {
        "category": "Limpieza",
        "description": "Cloro concentrado para desinfección profunda.",
        "descriptionEn": "Concentrated chlorine for deep disinfection.",
        "existenceOnStore": [
            {
                "plaza-central": 15
            },
            {
                "norte": 6
            }
        ],
        "icon": "sparkles",
        "id": "47",
        "image": "https://example.com/images/cloro.jpg",
        "name": "Cloro Concentrado",
        "price": 22,
        "slug": "cloro-concentrado",
        "stores": [
            "plaza-central",
            "norte"
        ]
    },
    {
        "category": "Electrónica",
        "description": "Mouse ergonómico inalámbrico con sensor óptico preciso.",
        "descriptionEn": "Ergonomic wireless mouse with precise optical sensor.",
        "existenceOnStore": [
            {
                "sur": 4
            }
        ],
        "icon": "zap",
        "id": "48",
        "image": "https://example.com/images/mouse.jpg",
        "name": "Mouse Inalámbrico",
        "price": 110,
        "slug": "mouse-inalambrico",
        "stores": [
            "sur"
        ]
    },
    {
        "category": "Farmacia",
        "description": "Antibiótico para el tratamiento de infecciones bacterianas.",
        "descriptionEn": "Antibiotic for the treatment of bacterial infections.",
        "existenceOnStore": [
            {
                "oriente": 12
            },
            {
                "plaza-central": 9
            }
        ],
        "icon": "pill",
        "id": "49",
        "image": "https://example.com/images/amoxicilina.jpg",
        "name": "Amoxicilina 500mg",
        "price": 55,
        "slug": "amoxicilina-500mg",
        "stores": [
            "oriente",
            "plaza-central"
        ]
    },
    {
        "category": "Abarrotes",
        "description": "Frijol negro rico en proteínas y fibra.",
        "descriptionEn": "Black beans rich in protein and fiber.",
        "existenceOnStore": [
            {
                "norte": 5
            }
        ],
        "icon": "package",
        "id": "50",
        "image": "https://example.com/images/frijol.jpg",
        "name": "Frijol Negro",
        "price": 38,
        "slug": "frijol-negro",
        "stores": [
            "norte"
        ]
    },
    {
        "category": "Limpieza",
        "description": "Limpiador especializado para vidrios y espejos.",
        "descriptionEn": "Specialized cleaner for glass and mirrors.",
        "existenceOnStore": [
            {
                "plaza-central": 14
            },
            {
                "oriente": 13
            }
        ],
        "icon": "sparkles",
        "id": "51",
        "image": "https://example.com/images/limpiavidrios.jpg",
        "name": "Limpiavidrios",
        "price": 19,
        "slug": "limpiavidrios",
        "stores": [
            "plaza-central",
            "oriente"
        ]
    },
    {
        "category": "Electrónica",
        "description": "Teclado mecánico retroiluminado para gamers y programadores.",
        "descriptionEn": "Backlit mechanical keyboard for gamers and programmers.",
        "existenceOnStore": [
            {
                "norte": 8
            },
            {
                "sur": 10
            }
        ],
        "icon": "zap",
        "id": "52",
        "image": "https://example.com/images/teclado.jpg",
        "name": "Teclado Mecánico",
        "price": 450,
        "slug": "teclado-mecanico",
        "stores": [
            "norte",
            "sur"
        ]
    },
    {
        "category": "Farmacia",
        "description": "Antihistamínico eficaz contra alergias.",
        "descriptionEn": "Effective antihistamine against allergies.",
        "existenceOnStore": [
            {
                "plaza-central": 13
            }
        ],
        "icon": "pill",
        "id": "53",
        "image": "https://example.com/images/loratadina.jpg",
        "name": "Loratadina 10mg",
        "price": 28,
        "slug": "loratadina-10mg",
        "stores": [
            "plaza-central"
        ]
    },
    {
        "category": "Abarrotes",
        "description": "Pasta integral rica en fibra y de cocción rápida.",
        "descriptionEn": "Whole wheat pasta rich in fiber and quick to cook.",
        "existenceOnStore": [
            {
                "sur": 9
            },
            {
                "oriente": 0
            }
        ],
        "icon": "package",
        "id": "54",
        "image": "https://example.com/images/pasta.jpg",
        "name": "Pasta Integral",
        "price": 33,
        "slug": "pasta-integral",
        "stores": [
            "sur",
            "oriente"
        ]
    },
    {
        "category": "Limpieza",
        "description": "Desinfectante en aerosol para eliminar virus y bacterias.",
        "descriptionEn": "Aerosol disinfectant to eliminate viruses and bacteria.",
        "existenceOnStore": [
            {
                "norte": 12
            }
        ],
        "icon": "sparkles",
        "id": "55",
        "image": "https://example.com/images/desinfectante.jpg",
        "name": "Desinfectante Aerosol",
        "price": 27,
        "slug": "desinfectante-aerosol",
        "stores": [
            "norte"
        ]
    },
    {
        "category": "Electrónica",
        "description": "Reloj inteligente con monitoreo de actividad física.",
        "descriptionEn": "Smartwatch with physical activity monitoring.",
        "existenceOnStore": [
            {
                "plaza-central": 10
            },
            {
                "norte": 9
            }
        ],
        "icon": "zap",
        "id": "56",
        "image": "https://example.com/images/smartwatch.jpg",
        "name": "Smartwatch Deportivo",
        "price": 900,
        "slug": "smartwatch-deportivo",
        "stores": [
            "plaza-central",
            "norte"
        ]
    },
    {
        "category": "Farmacia",
        "description": "Medicamento para aliviar síntomas de gripe y resfriado.",
        "descriptionEn": "Medicine to relieve flu and cold symptoms.",
        "existenceOnStore": [
            {
                "sur": 13
            },
            {
                "plaza-central": 5
            }
        ],
        "icon": "pill",
        "id": "57",
        "image": "https://example.com/images/antigripal.jpg",
        "name": "Antigripal Compuesto",
        "price": 48,
        "slug": "antigripal-compuesto",
        "stores": [
            "sur",
            "plaza-central"
        ]
    },
    {
        "category": "Abarrotes",
        "description": "Azúcar morena natural sin refinar.",
        "descriptionEn": "Natural unrefined brown sugar.",
        "existenceOnStore": [
            {
                "oriente": 12
            }
        ],
        "icon": "package",
        "id": "58",
        "image": "https://example.com/images/azucar.jpg",
        "name": "Azúcar Morena",
        "price": 29,
        "slug": "azucar-morena",
        "stores": [
            "oriente"
        ]
    },
    {
        "category": "Limpieza",
        "description": "Esponjas resistentes ideales para limpieza del hogar.",
        "descriptionEn": "Durable sponges ideal for household cleaning.",
        "existenceOnStore": [
            {
                "plaza-central": 4
            },
            {
                "sur": 12
            }
        ],
        "icon": "sparkles",
        "id": "59",
        "image": "https://example.com/images/esponjas.jpg",
        "name": "Esponjas Multiuso",
        "price": 15,
        "slug": "esponjas-multiuso",
        "stores": [
            "plaza-central",
            "sur"
        ]
    },
    {
        "category": "Electrónica",
        "description": "Laptop ultraligera de alto rendimiento con pantalla HD.",
        "descriptionEn": "Ultralight high-performance laptop with HD screen.",
        "existenceOnStore": [
            {
                "norte": 8
            },
            {
                "oriente": 5
            }
        ],
        "icon": "zap",
        "id": "60",
        "image": "https://example.com/images/laptop.jpg",
        "name": "Laptop Ultraligera",
        "price": 15000,
        "slug": "laptop-ultraligera",
        "stores": [
            "norte",
            "oriente"
        ]
    }
]
'