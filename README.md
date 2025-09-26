# Proyecto: Localizador de Productos en Tienda 

## Resumen del Proyecto

Este proyecto busca resolver el problema de la falta de visibilidad del inventario en tiendas físicas, que genera frustración en los clientes, pérdida de tiempo y oportunidades de venta. Proponemos un sistema que permita a los clientes consultar la disponibilidad de productos y su ubicación en la tienda antes de ir, mejorando la experiencia del cliente.

## Problema Actual y Relevancia

A menudo, los clientes tienen claro lo que buscan en una tienda, pero no lo encuentran. Esto genera frustración, pérdida de tiempo y decisiones de compra subóptimas.
## Propuesta de Solución

1.  Sistema que permita al cliente consultar antes de ir a la tienda si el producto deseado está disponible.
2.  Mostrar en qué sección o estante de la tienda se puede encontrar (o al menos la zona: papelería, limpieza, etc.).
3.  Si no está en la tienda elegida, sugerir recolección/pedido de otra sucursal (“ship-from-store” o “pick-up in other store”).
4. (opcional) Sugerir productos similares si el original no está disponible.

### Componentes Clave

*   Inventario en tiempo real, sincronizado con todas las tiendas.
*   Mapeo interno de la tienda: asociación producto → sección / estante.
*   Interfaz amigable para el cliente (app, página web).
*   Algoritmo de sugerencias de productos similares.

## Beneficios Esperados

### Beneficios

*   Mejora en la experiencia del cliente → mayor fidelización.
*   Reducción de pérdidas de intención de venta por falta de stock.
*   Aprovechamiento de inventario entre tiendas → menos desperdicio.
*   Mejora operativa interna: reposición más eficiente, reducción de tiempo perdido en quejas o recolecciones innecesarias.

## Arquitectura (Diagrama de Contenedores)

![C4](./docs/Mermaid%20Chart%20-%20Create%20complex,%20visual%20diagrams%20with%20text.%20A%20smarter%20way%20of%20creating%20diagrams.-2025-09-26-031734.svg)



##  Instalación de la Aplicación (Local)

Este documento describe el proceso de instalación y configuración de la aplicación demo, la cual está compuesta por microservicios en Docker.

## Arquitectura

La aplicación está diseñada con una arquitectura de microservicios, lo que permite desacoplar cada componente individualmente. Los componentes principales son:

*   **Frontend:** Interfaz de usuario.
*   **typesense:** motor de busqueda
*   **recomender:** integracion de modelo de inteligencia artificial blip
*   **Store:** servicio de tiendas y ubicación de productos en tiendas
*   **Catalog:** catalogo de productos

Cada uno de estos componentes puede ejecutarse en su propio contenedor Docker.

## Prerrequisitos

*   **Docker:** Asegúrate de tener Docker instalado y configurado en tu sistema.  Puedes descargar e instalar Docker desde [https://www.docker.com/](https://www.docker.com/).
*   **Docker Compose:** Docker Compose es necesario para orquestar los contenedores de la aplicación.  La mayoría de las instalaciones de Docker vienen con Docker Compose incluido.  Verifica que tienes Docker Compose instalado y funcionando correctamente.

## Instrucciones de Instalación

1.  **Descargar el Repositorio:**

    ```bash
    git clone https://github.com/alberto-perez-meneses/wm-hackathon-codecosystem.git
    cd wm-hackathon-codecosystem
    ```

2.  ** Opcional Configuración (Archivos `.env`):**

    No es necesario configurar las rutas de los microservicios dentro de los archivos `.env`. ya que todos estan apuntando a localhost, aun así cada directorio tiene un archivo .env-ex con los datos de configuración  Este paso es crucial para el correcto funcionamiento de la aplicación en caso de correrlo remoto o con un dominio especifico.

3.  **Construir y Levantar la Aplicación con Docker Compose:**

    En la carpeta raíz del repositorio (donde se encuentra el archivo `docker-compose.yml`), ejecuta los siguientes comandos:

    ```bash
    docker-compose build
    docker-compose up -d
    # validar que levanten los procesos
    docker ps
    ```

4.  **Cargar la Data Inicial:**

    Para que la aplicación funcione correctamente, es necesario cargar una data mínima.  Para ello, ejecuta el script `step1.sh` (en Linux):

    ```bash
    chmod +x step1.sh
    ./step1.sh
    ```

    el script hace un llamado con la informacion necesaria para iniciar la aplicación cargando el catalogo de productos

## Acceder a la Aplicación

Una vez completados los pasos anteriores, la aplicación estará disponible en tu navegador web en la siguiente dirección: http://localhost:4200/home