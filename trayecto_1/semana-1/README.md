# Semana 1 — Introducción a los algoritmos

Esta carpeta contiene las actividades de la primera semana: dos ejercicios de instrucciones, cuatro programas secuenciales principales y tres prácticas complementarias.

La página [index.html](index.html) presenta el resumen y las actividades. Los programas están en `psc/` y todos los diagramas PNG están en `img/`.

## Actividades

| N.º | Actividad | Archivo o explicación |
|---:|---|---|
| 1 | Cruzar la quebrada | Solución explicada en [index.html](index.html) |
| 2 | Preparar un tinto | [tinto.md](tinto.md) |
| 3 | Saludo | [psc/Saludo.psc](psc/Saludo.psc) · [img/Saludo.png](img/Saludo.png) |
| 4 | Edad en días | [psc/EdadEnDias.psc](psc/EdadEnDias.psc) · [img/EdadEnDias.png](img/EdadEnDias.png) |
| 5 | Calculadora de propinas | [psc/Propinas.psc](psc/Propinas.psc) · [img/Propinas.png](img/Propinas.png) |
| 6 | Promedio de tres notas | [psc/PromedioNotas.psc](psc/PromedioNotas.psc) · [img/PromedioNotas.png](img/PromedioNotas.png) |
| 7 | Área y perímetro de un rectángulo | [psc/AreaYPerimetroRectangulo.psc](psc/AreaYPerimetroRectangulo.psc) · [img/AreaYPerimetroRectangulo.png](img/AreaYPerimetroRectangulo.png) |
| 8 | Celsius a Fahrenheit | [psc/CelsiusAFahrenheit.psc](psc/CelsiusAFahrenheit.psc) · [img/CelsiusAFahrenheit.png](img/CelsiusAFahrenheit.png) |
| 9 | Dividir una cuenta | [psc/DividirCuenta.psc](psc/DividirCuenta.psc) · [img/DividirCuenta.png](img/DividirCuenta.png) |

## Lógica de los programas

- **Saludo:** lee un nombre como cadena y lo concatena con el texto del saludo.
- **Edad en días:** multiplica la edad en años por 365. El resultado es aproximado porque no cuenta los años bisiestos.
- **Propinas:** calcula el porcentaje de propina, lo suma a la cuenta y divide el total entre las personas. En esta primera versión se supone que la cantidad de personas es mayor que cero; la validación se trabaja en la semana 2.
- **Promedio:** suma tres notas y divide el resultado entre tres.
- **Área y perímetro:** usa `base × altura` para el área y `2 × (base + altura)` para el perímetro.
- **Celsius a Fahrenheit:** aplica `(Celsius × 9 / 5) + 32`.
- **Dividir cuenta:** calcula propina y total, y reparte el pago. Como en la primera calculadora, se supone que la cantidad de personas es mayor que cero.

## Pruebas de referencia

Los resultados de esta tabla son **esperados** a partir de las operaciones descritas. Se deben ingresar en PSeInt y comparar con la salida del programa antes de registrar que fueron ejecutados.

| Programa | Entradas | Resultado esperado |
|---|---|---|
| Saludo | `Ana`; `Luis` | `Hola, Ana`; `Hola, Luis` |
| Edad en días | 20 años; 18 años | 7.300 días; 6.570 días aproximadamente |
| Propinas | $120.000, 10 %, 4 personas; $84.000, 15 %, 4 personas | Propina $12.000, total $132.000, $33.000 por persona; propina $12.600, total $96.600, $24.150 por persona |
| Promedio de tres notas | 4, 3.5 y 4.5; 3, 3 y 4 | 4; aproximadamente 3.33 |
| Área y perímetro | Base 5, altura 3; base 2.5, altura 4 | Área 15 y perímetro 16; área 10 y perímetro 13 |
| Celsius a Fahrenheit | 0 °C; 25 °C | 32 °F; 77 °F |
| Dividir una cuenta | $120.000, 10 %, 4 personas; $84.000, 15 %, 4 personas | Propina $12.000, total $132.000, $33.000 por persona; propina $12.600, total $96.600, $24.150 por persona |

## Entregables de la semana

- Solución ordenada del cruce de la quebrada.
- Instrucciones precisas para preparar un tinto en `tinto.md`.
- Cuatro programas secuenciales principales en PSeInt y sus diagramas de flujo PNG.
- Tres prácticas complementarias en PSeInt y sus diagramas.
- Dos pruebas de referencia por programa; sus resultados reales quedan pendientes de comparar con la ejecución en PSeInt.
