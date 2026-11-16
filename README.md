# Algoritmia — Trayecto 1

Repositorio académico para organizar los ejercicios y aprendizajes de Algoritmia del Trayecto 1. El contenido está distribuido en tres semanas, con una página para consultar los temas y ejercicios de cada una.

## Cómo abrir el proyecto

Abre [index.html](index.html) en un navegador y selecciona una semana. Desde cada página puedes volver al inicio y consultar los archivos de sus ejercicios.

| Semana | Tema | Página |
|---|---|---|
| 1 | Introducción a los algoritmos y pensamiento computacional | [Abrir semana 1](trayecto_1/semana-1/index.html) |
| 2 | Lógica proposicional y estructuras de decisión | [Abrir semana 2](trayecto_1/semana-2/index.html) |
| 3 | Patrones de repetición y descomposición de problemas | [Abrir semana 3](trayecto_1/semana-3/index.html) |

## Semana 1 — Introducción a los algoritmos

Se practican algoritmos secuenciales, entradas, procesos y salidas, variables y pseudocódigo. La página de la [semana 1](trayecto_1/semana-1/index.html) presenta nueve ejercicios y sus pruebas de referencia. El [README de la semana](trayecto_1/semana-1/README.md) amplía las explicaciones y los casos de prueba.

| Ejercicio | Programa o explicación | Imagen |
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

## Semana 2 — Lógica proposicional y decisiones

Se practican proposiciones, operadores lógicos, negación, condiciones, decisiones y casos límite. La página de la [semana 2](trayecto_1/semana-2/index.html) explica las actividades y el [README de la semana](trayecto_1/semana-2/README.md) contiene tablas de verdad o decisión y pruebas de escritorio.

| Actividad | Archivo |
|---|---|
| Validar registro | [ValidarRegistro.psc](trayecto_1/semana-2/psc/ValidarRegistro.psc) |
| Corregir la calculadora de propinas | [Propinas.psc](trayecto_1/semana-2/psc/Propinas.psc) |
| Calcular la tarifa del parqueadero | [TarifaParqueadero.psc](trayecto_1/semana-2/psc/TarifaParqueadero.psc) |
| Clasificar el inventario | [SemaforoInventario.psc](trayecto_1/semana-2/psc/SemaforoInventario.psc) |
| Determinar si un año es bisiesto | [AnioBisiesto.psc](trayecto_1/semana-2/psc/AnioBisiesto.psc) |

La práctica complementaria de JavaScript está en [ejerciciosPropuestos.js](trayecto_1/semana-2/js/ejerciciosPropuestos.js) e incluye ejercicios de proposiciones y decisiones.

## Semana 3 — Repetición y descomposición

Se practican ciclos, contadores, acumuladores, centinelas, banderas, límites de intentos, ciclos anidados y subprocesos. La página de la [semana 3](trayecto_1/semana-3/index.html) presenta las actividades; el [README de la semana](trayecto_1/semana-3/README.md) reúne las trazas, las firmas de los subprocesos y el árbol de componentes.

| Actividad | Archivo |
|---|---|
| Cajero con retiros y centinela | [Cajero.psc](trayecto_1/semana-3/psc/Cajero.psc) |
| Calificaciones: promedio, nota mayor, nota menor y reprobados | [Calificaciones.psc](trayecto_1/semana-3/psc/Calificaciones.psc) |
| Validación de usuario con tres intentos | [ValidarUsuario.psc](trayecto_1/semana-3/psc/ValidarUsuario.psc) |
| Pirámide con ciclos anidados | [Piramide.psc](trayecto_1/semana-3/psc/Piramide.psc) |
| Factura de restaurante con subprocesos | [FacturaRestaurante.psc](trayecto_1/semana-3/psc/FacturaRestaurante.psc) |

La práctica complementaria para calcular una compra está en [totalCompra.js](trayecto_1/semana-3/js/totalCompra.js).

## Organización del proyecto

```text
algoritmia/
├── index.html
├── README.md
├── css/
│   └── style.css
├── img/
│   ├── icon.png                  # Ícono de las tarjetas del inicio
│   └── riwi.png                  # Logo del encabezado
└── trayecto_1/
    ├── semana-1/
    │   ├── index.html
    │   ├── README.md
    │   ├── tinto.md
    │   ├── img/                  # Imágenes de los ejercicios de semana 1
    │   └── psc/                  # Programas PSeInt
    ├── semana-2/
    │   ├── index.html
    │   ├── README.md
    │   ├── js/                   # Ejercicios complementarios
    │   └── psc/                  # Programas PSeInt
    └── semana-3/
        ├── index.html
        ├── README.md
        ├── js/                   # Ejercicio complementario
        └── psc/                  # Programas PSeInt
```

La carpeta `img/` de la raíz contiene el ícono de las tarjetas y el logo de Riwi. Dentro de `trayecto_1/`, solo la semana 1 tiene una carpeta `img/`, con las imágenes de sus ejercicios.

## Tecnologías

- **HTML** organiza el contenido de las páginas.
- **CSS** contiene los estilos propios del proyecto.
- **Bootstrap 5.3** ayuda con la cuadrícula y el diseño adaptable.
- **JavaScript** se usa en las prácticas complementarias de las semanas 2 y 3.
- **PSeInt** se utiliza para escribir los algoritmos de las actividades.
