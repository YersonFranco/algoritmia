# Algoritmia — Trayecto 1

Repositorio académico para organizar las actividades de Algoritmia del Trayecto 1. La página principal está hecha con HTML, CSS y Bootstrap 5.3.

## Cómo abrir el proyecto

Abre `index.html` en un navegador y selecciona una semana. La página de la semana 1 muestra los ejercicios, sus pruebas de referencia y los enlaces para descargar los archivos PSeInt y los diagramas PNG.

## Semana 1 — Introducción a los algoritmos

Se practican algoritmos secuenciales, entradas, procesos y salidas, variables, pseudocódigo y diagramas de flujo.

La explicación de los ejercicios está en [la página de la semana 1](trayecto_1/semana-1/index.html).

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

Las pruebas de referencia y los resultados esperados están descritos en la página de la semana 1. En la edad en días se usa el cálculo aproximado de 365 días por año.

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
    │   ├── tinto.md
    │   ├── img/       # Diagramas PNG de la semana
    │   ├── js/
    │   └── psc/       # Programas PSeInt
    ├── semana-2/
    │   ├── img/
    │   ├── js/
    │   └── psc/
    └── semana-3/
        ├── img/
        ├── js/
        └── psc/
```

## Tecnologías

- **HTML** organiza el contenido de las páginas.
- **CSS** contiene los estilos propios del proyecto.
- **Bootstrap 5.3** ayuda con la cuadrícula y el diseño adaptable a distintos tamaños de pantalla.
- **PSeInt** se utiliza para escribir los algoritmos de las actividades.

## Semanas siguientes

- **Semana 2:** lógica proposicional y estructuras de decisión. Su contenido se añadirá a `trayecto_1/semana-2/`.
- **Semana 3:** patrones de repetición y descomposición de problemas. Su contenido se añadirá a `trayecto_1/semana-3/`.
