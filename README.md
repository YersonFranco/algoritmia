# Algoritmia 1 - Semana 1 | RIWI

Repositorio con el trabajo de la semana 1: introducción a algoritmos y pensamiento computacional, cuatro algoritmos secuenciales en PSeInt, diagramas de flujo y pruebas de escritorio ejecutadas.

## Entregables

- Introducción a algoritmos y pensamiento computacional.
- Cuatro algoritmos secuenciales en formato `.psc`.
- Un diagrama de flujo generado en PSeInt para cada algoritmo, guardado en `.png`.
- Dos pruebas de entrada por algoritmo, ejecutadas en PSeInt.

## Archivos

| Algoritmo | Código PSeInt | Diagrama |
|---|---|---|
| Promedio de tres notas | [PromedioTresNotas.psc](PromedioTresNotas.psc) | [PromedioTresNotas.png](PromedioTresNotas.png) |
| Área y perímetro de un rectángulo | [AreaYPerimetroRectangulo.psc](AreaYPerimetroRectangulo.psc) | [AreaYPerimetroRectangulo.png](AreaYPerimetroRectangulo.png) |
| Conversión de Celsius a Fahrenheit | [CelsiusAFahrenheit.psc](CelsiusAFahrenheit.psc) | [CelsiusAFahrenheit.png](CelsiusAFahrenheit.png) |
| Calculadora de propina y división de la cuenta | [DividirCuenta.psc](DividirCuenta.psc) | [DividirCuenta.png](DividirCuenta.png) |

## Introducción a algoritmos y pensamiento computacional

Un **algoritmo** es una secuencia finita, precisa y ordenada de instrucciones que resuelve un problema. Recibe datos de entrada, realiza un proceso y produce una salida. Para que sea útil, sus instrucciones deben ser claras y debe terminar.

El **pensamiento computacional** consiste en organizar la solución de un problema: comprenderlo, identificar los datos importantes, dividirlo en pasos manejables, describir una solución y comprobarla con ejemplos.

Un algoritmo **secuencial** ejecuta sus instrucciones en el orden en que están escritas. Los cuatro algoritmos de este repositorio leen datos, realizan cálculos y muestran resultados, sin decisiones ni ciclos.

### Símbolos de los diagramas

- Óvalo: inicio o fin.
- Paralelogramo: entrada de datos (`Leer`) o salida (`Escribir`).
- Rectángulo: proceso o cálculo.
- Flechas: orden de ejecución.

## Retos de la semana

### Ejercicio 1 - Instrucciones sin ambigüedad (reto desconectado)

Las instrucciones para una computadora deben ser específicas porque esta no puede adivinar qué quiso decir quien las escribió. “Ve hasta la puerta” puede ser impreciso. Una versión más clara sería: “Avanza tres pasos, gira a la derecha y avanza un paso”.

Para evitar ambigüedades, cada instrucción debe expresar una acción concreta, indicar la cantidad o dirección cuando haga falta y aparecer en el orden correcto. Así, otra persona puede seguirla y obtener el mismo resultado.

### Ejercicio 2 - Mi primer algoritmo en PSeInt: entrada, proceso y salida

El algoritmo [PromedioTresNotas.psc](PromedioTresNotas.psc) muestra las tres partes de un algoritmo:

| Parte | Aplicación |
|---|---|
| Entrada | Leer las tres notas. |
| Proceso | Sumar las notas y dividir el resultado entre tres. |
| Salida | Mostrar el promedio. |

### Ejercicio 3 - Del pseudocódigo al diagrama de flujo

El pseudocódigo describe los pasos con instrucciones; el diagrama de flujo representa los mismos pasos mediante símbolos y flechas. Por ejemplo, el proceso de [CelsiusAFahrenheit.psc](CelsiusAFahrenheit.psc) es: iniciar, leer los grados Celsius, convertirlos, mostrar los grados Fahrenheit y finalizar. Su diagrama está guardado en [CelsiusAFahrenheit.png](CelsiusAFahrenheit.png).

### Ejercicio 4 - Calculadora de propinas y división de la cuenta

El proceso de [DividirCuenta.psc](DividirCuenta.psc) solicita el subtotal, el porcentaje de propina y el número de personas. Calcula el valor de la propina, lo suma a la cuenta y divide el total en partes iguales:

```text
valorPropina = subtotal * porcentajePropina / 100
totalConPropina = subtotal + valorPropina
pagoPorPersona = totalConPropina / cantidadPersonas
```

La cantidad de personas debe ser mayor que cero.

## Pruebas ejecutadas

Cada algoritmo se ejecutó en PSeInt con las dos entradas indicadas a continuación. Los resultados obtenidos corresponden a los resultados esperados.

| Algoritmo | Entrada 1 y resultado | Entrada 2 y resultado |
|---|---|---|
| Promedio de tres notas | Notas `4`, `3`, `5` → promedio `4` | Notas `2`, `4`, `3` → promedio `3` |
| Área y perímetro | Base `5`, altura `3` → área `15`, perímetro `16` | Base `2.5`, altura `4` → área `10`, perímetro `13` |
| Celsius a Fahrenheit | `0 °C` → `32 °F` | `25 °C` → `77 °F` |
| Propina y división de cuenta | Cuenta `100000`, propina `10 %`, `2` personas → propina `10000`, total `110000`, pago por persona `55000` | Cuenta `84000`, propina `15 %`, `4` personas → propina `12600`, total `96600`, pago por persona `24150` |

## Organización del repositorio

```text
Algoritmia/
├── README.md
├── PromedioTresNotas.psc
├── PromedioTresNotas.png
├── AreaYPerimetroRectangulo.psc
├── AreaYPerimetroRectangulo.png
├── CelsiusAFahrenheit.psc
├── CelsiusAFahrenheit.png
├── DividirCuenta.psc
└── DividirCuenta.png
```
