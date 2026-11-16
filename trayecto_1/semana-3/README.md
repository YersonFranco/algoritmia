# Semana 3 — Repetir y descomponer

Esta semana practicamos ciclos, patrones de recorrido y subprocesos. La página [index.html](index.html) reúne las explicaciones y los ejercicios. La carpeta `psc/` contiene los cinco programas PSeInt y `js/totalCompra.js` contiene la práctica complementaria de funciones.

## Qué aprendimos

- Cada ciclo necesita un **inicio**, una **condición**, un **cuerpo** y una **actualización**. Si la variable de la condición no cambia, el ciclo puede ser infinito.
- Usamos `Para` cuando conocemos el número de repeticiones, `Mientras` cuando repetimos mientras se cumpla una condición y `Repetir ... Hasta Que` cuando el cuerpo debe ejecutarse al menos una vez.
- Los patrones usados en los ejercicios son **contador**, **acumulador**, **bandera**, **máximo**, **mínimo**, **centinela** y **límite de intentos**.
- Los ciclos anidados sirven para producir filas con varios elementos, como los espacios y asteriscos de una pirámide.
- Una tabla de traza registra los valores en cada vuelta y ayuda a detectar el error por uno.
- Un subproceso tiene un nombre, recibe datos y entrega un resultado. Antes de escribirlo definimos sus entradas y salidas (firma).

## Ejercicio 1 — Cajero con centinela

Se ingresan montos a retirar hasta que se escribe `0`. El acumulador suma los montos positivos y el contador registra la cantidad de retiros. Un monto negativo se rechaza y no se incluye en el total.

**Traza de referencia:** entradas `4000`, `8000`, `2000`, `0`.

| Entrada | Total retirado | Cantidad de retiros | Acción |
|---:|---:|---:|---|
| Inicio | 0 | 0 | Inicializar acumulador y contador |
| 4.000 | 4.000 | 1 | Sumar y contar el retiro |
| 8.000 | 12.000 | 2 | Sumar y contar el retiro |
| 2.000 | 14.000 | 3 | Sumar y contar el retiro |
| 0 | 14.000 | 3 | El centinela detiene el ciclo |

**Resultado esperado:** 3 retiros por un total de $14.000.

Archivo: [Cajero.psc](psc/Cajero.psc).

## Ejercicio 2 — Calificaciones

Se leen cinco notas y, en un solo recorrido, se calcula el promedio, la nota mayor, la nota menor y la cantidad de estudiantes reprobados. Se considera reprobada una nota menor que 3.

**Entradas de referencia:** 3,5; 2,8; 4,9; 3,0; 4,2.

| Vuelta | Nota | Suma | Mayor | Menor | Reprobados |
|---:|---:|---:|---:|---:|---:|
| Inicio | — | 0 | 0 | 5 | 0 |
| 1 | 3,5 | 3,5 | 3,5 | 3,5 | 0 |
| 2 | 2,8 | 6,3 | 3,5 | 2,8 | 1 |
| 3 | 4,9 | 11,2 | 4,9 | 2,8 | 1 |
| 4 | 3,0 | 14,2 | 4,9 | 2,8 | 1 |
| 5 | 4,2 | 18,4 | 4,9 | 2,8 | 1 |

**Resultado esperado:** promedio 3,68; mayor 4,9; menor 2,8; un estudiante reprobado.

Archivo: [Calificaciones.psc](psc/Calificaciones.psc).

## Ejercicio 3 — Validación de usuario

El usuario puede ingresar un correo hasta tres veces. El algoritmo recorre el texto y usa dos banderas para verificar que aparezcan `@` y `.`. Si ambas se activan, la bandera de correo válido permite terminar antes; si no, el contador limita los intentos.

| Intento | Entrada | ¿Tiene `@` y `.`? | Resultado |
|---:|---|:---:|---|
| 1 | `anaejemplo.com` | No | Solicita otro intento |
| 2 | `ana@ejemplo.com` | Sí | Valida y termina |
| 1, 2 y 3 | Entradas sin alguno de los dos caracteres | No | Agota los intentos y termina |

La validación comprueba que el texto contenga ambos caracteres: `@` y `.`.

Archivo: [ValidarUsuario.psc](psc/ValidarUsuario.psc).

## Ejercicio 4 — Pirámide de asteriscos

El ciclo exterior recorre las filas. Para cada fila, el primer ciclo interior escribe los espacios y el segundo escribe `2 × fila − 1` asteriscos.

**Traza para `n = 3`:**

| Fila | Espacios (`n − fila`) | Asteriscos (`2 × fila − 1`) | Salida |
|---:|---:|---:|---|
| 1 | 2 | 1 | `  *` |
| 2 | 1 | 3 | ` ***` |
| 3 | 0 | 5 | `*****` |

```text
  *
 ***
*****
```

Archivo: [Piramide.psc](psc/Piramide.psc).

## Ejercicio 5 — Factura de restaurante

Antes de programar, se identifican las firmas de los subprocesos. La propina es opcional: si no se agrega, su porcentaje es 0. El pago individual se redondea al peso entero más cercano mediante `Redon`.

| Subproceso | Entradas | Salida |
|---|---|---|
| `CalcularSubtotal` | Precio y cantidad de tres productos | Subtotal de la cuenta |
| `CalcularPropina` | Subtotal y porcentaje de propina | Valor de la propina |
| `CalcularTotal` | Subtotal y propina | Total de la cuenta |
| `CalcularPagoPorPersona` | Total y número de comensales | Pago individual redondeado |

**Prueba con propina:** 2 platos de $25.000 y 1 plato de $12.000 dan un subtotal de $62.000. Con propina del 10 %, la propina es $6.200 y el total $68.200. Entre 3 comensales son $22.733,33; cada pago se redondea a $22.733.

**Prueba sin propina:** el total permanece en $62.000. Entre 3 comensales, el pago se redondea de $20.666,67 a $20.667.

El programa comprueba que la cantidad de comensales sea mayor que cero antes de dividir.

Archivo: [FacturaRestaurante.psc](psc/FacturaRestaurante.psc).

## Árbol de componentes — Página de perfil

El árbol representa un perfil sencillo de una red social. Las partes marcadas como repetidas corresponden a listas que podrían renderizarse con el mismo diseño para cada elemento.

```text
Perfil
├── Encabezado
│   ├── Logo
│   ├── Búsqueda
│   └── Navegación (iconos repetidos)
├── Contenido principal
│   ├── Presentación del perfil
│   │   ├── Foto de perfil
│   │   ├── Nombre y biografía
│   │   └── Botón de seguir
│   └── Lista de publicaciones
│       └── Tarjeta de publicación (se repite N veces)
│           ├── Autor y fecha
│           ├── Texto e imagen opcional
│           └── Acciones y comentarios
├── Lista de amistades
│   └── Tarjeta de amistad (se repite N veces)
└── Pie de página
```

## Ejercicios guiados

### El caracol del pozo

El caracol parte de 0 m, sube 3 m cada día y resbala 2 m durante la noche. Cuando llega a 10 m, sale y no resbala. La traza demuestra que sale en el día 8:

| Día | Inicio | Después de subir | ¿Sale? | Después de resbalar |
|---:|---:|---:|:---:|---:|
| 1 | 0 | 3 | No | 1 |
| 2 | 1 | 4 | No | 2 |
| 3 | 2 | 5 | No | 3 |
| 4 | 3 | 6 | No | 4 |
| 5 | 4 | 7 | No | 5 |
| 6 | 5 | 8 | No | 6 |
| 7 | 6 | 9 | No | 7 |
| 8 | 7 | 10 | Sí | — |

### Cajero con PIN

El ciclo termina cuando el PIN es correcto **o** cuando se llega al tercer intento (`acceso O intentos = 3`). Con `Y`, si los tres PIN fallan, la condición no se cumple como se necesita y el ciclo puede continuar indefinidamente. La validación de usuario también usa una bandera y un límite de intentos.

### Error por uno

| Ciclo | Vueltas | Motivo |
|---|---:|---|
| `Para i <- 1 Hasta 10` | 10 | Incluye los valores de 1 a 10 |
| `Para i <- 0 Hasta 10` | 11 | También cuenta el 0 |
| `i <- 1; Mientras i < 10` y sumar 1 | 9 | Al llegar a 10 la condición deja de cumplirse |

## Práctica complementaria — Funciones para una compra

`js/totalCompra.js` suma los artículos, aplica un cupón, calcula el impuesto del 19 % y determina el costo del envío. El envío es gratis solo cuando el subtotal original es **mayor que** $150.000.

| Escenario | Subtotal | Cupón | Base del impuesto | Impuesto (19 %) | Envío | Total |
|---|---:|---:|---:|---:|---:|---:|
| Con `RIWI10` | $130.000 | −$13.000 | $117.000 | $22.230 | $8.000 | **$147.230** |
| Sin cupón, subtotal sobre $150.000 | $160.000 | $0 | $160.000 | $30.400 | $0 | **$190.400** |

Archivo: [totalCompra.js](js/totalCompra.js).

## Archivos de la semana

```text
semana-3/
├── index.html
├── README.md
├── js/
│   └── totalCompra.js          # Funciones para calcular una compra
└── psc/
    ├── Cajero.psc
    ├── Calificaciones.psc
    ├── FacturaRestaurante.psc
    ├── Piramide.psc
    └── ValidarUsuario.psc
```

La carpeta contiene cinco programas PSeInt con sus trazas y explicaciones, el árbol de componentes del perfil y una práctica de cálculo de compra en JavaScript.
