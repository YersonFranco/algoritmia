# Algoritmia — Trayecto 1

Repositorio académico para organizar las actividades de Algoritmia del Trayecto 1. La página principal está hecha con HTML, CSS y Bootstrap 5.3.

## Cómo abrir el proyecto

Abre `index.html` en un navegador y selecciona una semana. La página de la semana 1 muestra los ejercicios, sus pruebas de referencia y los enlaces para descargar los archivos PSeInt y los diagramas PNG.

## Semana 1 — Introducción a los algoritmos

Se practican algoritmos secuenciales, entradas, procesos y salidas, variables, pseudocódigo y diagramas de flujo.

La explicación de los ejercicios está en [la página de la semana 1](trayecto_1/semana-1/index.html). El [README de la semana](trayecto_1/semana-1/README.md) reúne la lógica de los programas y sus pruebas de referencia.

| Ejercicio | Programa o explicación | Diagrama |
|---|---|---|
| 1. Cruzar la quebrada | Solución paso a paso en la página | — |
| 2. Preparar un tinto | [tinto.md](trayecto_1/semana-1/tinto.md) | — |
| 3. Saludo | [Saludo.psc](trayecto_1/semana-1/psc/Saludo.psc) | [Saludo.png](trayecto_1/semana-1/img/Saludo.png) |
| 4. Edad en días | [EdadEnDias.psc](trayecto_1/semana-1/psc/EdadEnDias.psc) | [EdadEnDias.png](trayecto_1/semana-1/img/EdadEnDias.png) |
| 5. Calculadora de propinas | [Propinas.psc](trayecto_1/semana-1/psc/Propinas.psc) | [Propinas.png](trayecto_1/semana-1/img/Propinas.png) |
| 6. Promedio de tres notas | [PromedioNotas.psc](trayecto_1/semana-1/psc/PromedioNotas.psc) | [PromedioNotas.png](trayecto_1/semana-1/img/PromedioNotas.png) |
| 7. Área y perímetro de un rectángulo | [AreaYPerimetroRectangulo.psc](trayecto_1/semana-1/psc/AreaYPerimetroRectangulo.psc) | [AreaYPerimetroRectangulo.png](trayecto_1/semana-1/img/AreaYPerimetroRectangulo.png) |
| 8. Celsius a Fahrenheit | [CelsiusAFahrenheit.psc](trayecto_1/semana-1/psc/CelsiusAFahrenheit.psc) | [CelsiusAFahrenheit.png](trayecto_1/semana-1/img/CelsiusAFahrenheit.png) |
| 9. Dividir una cuenta | [DividirCuenta.psc](trayecto_1/semana-1/psc/DividirCuenta.psc) | [DividirCuenta.png](trayecto_1/semana-1/img/DividirCuenta.png) |

Las pruebas de referencia de la semana 1 incluyen diferentes entradas para cada programa. En la edad en días se usa el cálculo aproximado de 365 días por año.

## Semana 2 — Lógica proposicional y decisiones

Se practican proposiciones, operadores lógicos, tablas de verdad, condiciones, decisiones y casos borde. La [página de la semana 2](trayecto_1/semana-2/index.html) reúne el resumen, las actividades y sus tablas; el [README de la semana 2](trayecto_1/semana-2/README.md) documenta las pruebas de escritorio.

| Actividad PSeInt | Archivo |
|---|---|
| Validar registro | [ValidarRegistro.psc](trayecto_1/semana-2/psc/ValidarRegistro.psc) |
| Corregir la calculadora de propinas | [Propinas.psc](trayecto_1/semana-2/psc/Propinas.psc) |
| Tarifa del parqueadero | [TarifaParqueadero.psc](trayecto_1/semana-2/psc/TarifaParqueadero.psc) |
| Semáforo de inventario | [SemaforoInventario.psc](trayecto_1/semana-2/psc/SemaforoInventario.psc) |
| Año bisiesto | [AnioBisiesto.psc](trayecto_1/semana-2/psc/AnioBisiesto.psc) |

Además de los programas PSeInt, hay cinco ejercicios complementarios de JavaScript en [ejerciciosPropuestos.js](trayecto_1/semana-2/js/ejerciciosPropuestos.js), con ejemplos de proposiciones y decisiones.

## Semana 3 — Repetición y descomposición

Se practican ciclos, contador, acumulador, centinela, bandera, límite de intentos, ciclos anidados y subprocesos. La [página de la semana 3](trayecto_1/semana-3/index.html) presenta los ejercicios y sus trazas; el [README de la semana 3](trayecto_1/semana-3/README.md) contiene las tablas, las firmas y el árbol de componentes.

| Ejercicio PSeInt | Archivo |
|---|---|
| Cajero con retiros y centinela | [Cajero.psc](trayecto_1/semana-3/psc/Cajero.psc) |
| Calificaciones en un recorrido | [Calificaciones.psc](trayecto_1/semana-3/psc/Calificaciones.psc) |
| Validación de usuario con tres intentos | [ValidarUsuario.psc](trayecto_1/semana-3/psc/ValidarUsuario.psc) |
| Pirámide con ciclos anidados | [Piramide.psc](trayecto_1/semana-3/psc/Piramide.psc) |
| Factura de restaurante con subprocesos | [FacturaRestaurante.psc](trayecto_1/semana-3/psc/FacturaRestaurante.psc) |

La práctica complementaria para calcular una compra está en [totalCompra.js](trayecto_1/semana-3/js/totalCompra.js).

## Organización del repositorio

```text
algoritmia/
├── index.html
├── README.md
├── css/
│   └── style.css
├── img/
│   └── icon.png
└── trayecto_1/
    ├── semana-1/
    │   ├── index.html
    │   ├── README.md
    │   ├── tinto.md
    │   ├── img/       # Diagramas PNG de la semana
    │   ├── js/
    │   └── psc/       # Programas PSeInt
    ├── semana-2/
    │   ├── img/
    │   ├── js/
    │   ├── psc/
    │   ├── index.html
    │   └── README.md
    └── semana-3/
        ├── img/
        ├── js/
        ├── psc/
        ├── index.html
        └── README.md
```

## Tecnologías

- **HTML** organiza el contenido de las páginas.
- **CSS** contiene los estilos propios del proyecto.
- **Bootstrap 5.3** ayuda con la cuadrícula y el diseño adaptable a distintos tamaños de pantalla.
- **PSeInt** se utiliza para escribir los algoritmos de las actividades.
