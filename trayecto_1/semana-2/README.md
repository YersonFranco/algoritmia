# Semana 2 — Lógica y decisiones

En esta semana practicamos proposiciones, comparaciones, operadores lógicos, decisiones, tablas y pruebas de escritorio. Los algoritmos están en `psc/` y las explicaciones también se encuentran en `index.html`.

## Qué aprendimos

- Una **proposición** es una afirmación que puede ser verdadera o falsa. Una pregunta o una orden no es una proposición.
- Los operadores de comparación son `>`, `<`, `>=`, `<=`, `=` y `<>`.
- Con `Y`, las dos condiciones deben cumplirse. Con `O`, basta con que se cumpla una; también es verdadero si ambas se cumplen. `NO` invierte el resultado.
- El orden lógico es `NO`, luego `Y` y luego `O`. Los paréntesis ayudan a expresar claramente una regla.
- Las decisiones en PSeInt se escriben con `Si`, `SiNo` y `FinSi`. `Segun` permite seleccionar una opción entre varias.
- Los casos borde son los valores en los que una regla cambia. Se deben probar antes, justo en el límite y después del límite.
- Una prueba de escritorio permite seguir los valores de las variables y comparar el resultado esperado con el resultado del algoritmo.

Con dos proposiciones `A` y `B`, las combinaciones lógicas básicas son:

| A | B | A Y B | A O B |
|---|---|---|---|
| F | F | F | F |
| F | V | F | V |
| V | F | F | V |
| V | V | V | V |

Una pregunta como “¿qué hora es?” y una orden como “cierra la puerta” no tienen valor de verdad. Una regla condicional tampoco permite invertir automáticamente su conclusión: de “si llueve, llevo paraguas” y “llevo paraguas” no se puede asegurar que llovió.

## Ejercicio 1 — Validar el registro

**Regla:** el registro se permite cuando la persona tiene 14 años o más **y** acepta los términos.

- `A`: edad mayor o igual a 14.
- `B`: aceptó los términos.
- Condición: `A Y B`.

| A: edad >= 14 | B: acepta términos | ¿Registro permitido? |
|---|---|---|
| F | F | No |
| F | V | No |
| V | F | No |
| V | V | Sí |

**Pruebas de escritorio** (la respuesta `s` se convierte a mayúscula antes de compararse):

| Edad | Respuesta | A | B | Resultado esperado |
|---:|:---:|:---:|:---:|---|
| 13 | S | F | V | No puedes registrarte |
| 14 | N | V | F | No puedes registrarte |
| 14 | s | V | V | Registro exitoso |
| 20 | S | V | V | Registro exitoso |

Archivo: [ValidarRegistro.psc](psc/ValidarRegistro.psc).

## Ejercicio 2 — Negar una condición con De Morgan

Una edad es válida si `edad >= 0 Y edad <= 120`. Para expresar cuándo es inválida se niega cada comparación y se cambia `Y` por `O`:

```text
NO (edad >= 0 Y edad <= 120)
= edad < 0 O edad > 120
```

| Edad | Edad >= 0 | Edad <= 120 | ¿Edad válida? | ¿Edad inválida? |
|---:|:---:|:---:|:---:|:---:|
| -1 | F | V | F | V |
| 0 | V | V | V | F |
| 120 | V | V | V | F |
| 121 | V | F | F | V |

Si se escribiera `edad < 0 Y edad > 120`, ningún número podría cumplir ambas condiciones a la vez. Por eso la negación correcta usa `O`.

## Demostración guiada — Corregir la calculadora de propinas

La decisión evita dividir entre cero o entre una cantidad negativa de personas. Si la cantidad es mayor que cero, se calcula la propina, el total y el pago individual.

```text
valorPropina = subtotal * porcentajePropina / 100
totalConPropina = subtotal + valorPropina
pagoPorPersona = totalConPropina / cantidadPersonas
```

| Cuenta | Propina | Personas | Resultado esperado |
|---:|---:|---:|---|
| $120.000 | 10 % | 4 | Propina $12.000; total $132.000; $33.000 por persona |
| $84.000 | 15 % | 4 | Propina $12.600; total $96.600; $24.150 por persona |
| $120.000 | 10 % | 0 | Mensaje: el número de personas debe ser mayor que cero |
| $120.000 | 10 % | -1 | Mensaje: el número de personas debe ser mayor que cero |

Archivo: [Propinas.psc](psc/Propinas.psc). Esta versión comprueba la cantidad de personas antes de dividir la cuenta.

## Ejercicio 3 — Tarifa del parqueadero

Se elige el vehículo con `Segun`. El cobro es por hora o fracción: sumar 59 antes de dividir entre 60 permite redondear hacia arriba. Los primeros 15 minutos son gratis. El tope diario se aplica antes de reducir a la mitad el valor por presentar factura.

| Regla | Tipo | Minutos | Factura | Resultado |
|---|---|---:|---|---|
| R1 | Cualquiera | Menos de 0 | Cualquiera | Error: minutos negativos |
| R2 | Distinto de carro (1) y moto (2) | 0 o más | Cualquiera | Error: tipo no válido |
| R3 | Carro o moto | 0 a 15 | Cualquiera | Gratis |
| R4 | Carro o moto | Más de 15 | No | Horas cobradas × tarifa, con tope de $30.000 |
| R5 | Carro o moto | Más de 15 | Sí | Aplicar la mitad después del tope |

Tarifas: carro, $4.000 por hora; moto, $2.000 por hora.

| Tipo | Minutos | Factura | Cálculo o límite probado | Resultado esperado |
|---|---:|:---:|---|---:|
| Carro | 15 | N | Borde de los minutos gratis | $0 |
| Carro | 16 | N | Primera hora cobrada | $4.000 |
| Carro | 60 | N | Una hora exacta | $4.000 |
| Carro | 61 | N | Se redondea a dos horas | $8.000 |
| Moto | 61 | S | Dos horas × $2.000; luego mitad | $2.000 |
| Carro | 600 | N | $40.000 reducido al tope | $30.000 |
| Carro | 600 | S | Tope de $30.000; luego mitad | $15.000 |
| 3 | 30 | N | Tipo no admitido | Error de tipo |
| Carro | -5 | N | Minutos negativos | Error de minutos |

**Traza del caso de 600 minutos, carro y factura:** tipo 1 → tarifa $4.000 → 10 horas → $40.000 → tope $30.000 → factura, mitad → **$15.000**.

Archivo: [TarifaParqueadero.psc](psc/TarifaParqueadero.psc).

## Ejercicio 4A — Semáforo de inventario

| Condición | Resultado |
|---|---|
| Stock menor que 0 | Error: inventario negativo |
| Stock igual a 0 | Rojo: agotado |
| Stock entre 1 y 10, inclusive | Amarillo: hay que pedir |
| Stock mayor que 10 | Verde: todo bien |

| Stock probado | Resultado esperado |
|---:|---|
| -1 | Error: inventario negativo |
| 0 | Rojo: agotado |
| 1 | Amarillo: hay que pedir |
| 10 | Amarillo: hay que pedir |
| 11 | Verde: todo bien |

Archivo: [SemaforoInventario.psc](psc/SemaforoInventario.psc).

## Ejercicio 4B — Año bisiesto

El año es bisiesto si es divisible entre 4 y no es divisible entre 100, o si es divisible entre 400:

```text
(anio MOD 4 = 0 Y anio MOD 100 <> 0) O anio MOD 400 = 0
```

| Año | Divisible entre 4 | Entre 100 | Entre 400 | Resultado esperado |
|---:|:---:|:---:|:---:|---|
| 2026 | No | No | No | No bisiesto |
| 2024 | Sí | No | No | Bisiesto |
| 1900 | Sí | Sí | No | No bisiesto |
| 2000 | Sí | Sí | Sí | Bisiesto |

Archivo: [AnioBisiesto.psc](psc/AnioBisiesto.psc).

## Ejercicios complementarios en JavaScript

Estos ejercicios aplican proposiciones, condiciones y decisiones a situaciones de calendario, acceso a eventos, descuentos, contraseñas e inventario. Se presentan en JavaScript como práctica complementaria a los algoritmos PSeInt.

| Ejercicio | Regla principal | Pruebas de referencia |
|---|---|---|
| Año bisiesto | Divisible entre 4 y no entre 100, o divisible entre 400 | 1900 no; 2000 sí; 2024 sí; 2026 no |
| Acceso a un evento | Adulto con boleta, o menor acompañado por adulto con boleta | Adulto con boleta: entra; menor sin acompañante: no entra |
| Tarifa de gimnasio | Estudiante: 50 %; mayor de 60: 40 %; se aplica solo el descuento mayor | Estudiante $100.000: $50.000; persona de 61 años: $60.000; estudiante de 61: $50.000 |
| Validador de contraseña | Al menos 8 caracteres, un número y sin la palabra `password` | `clave1234`: válida; `password123`: inválida |
| Semáforo de inventario | Menor que 0: error; 0: agotado; 1–10: bajo; mayor que 10: disponible | Probar -1, 0, 1, 10 y 11 |

Archivo: [ejerciciosPropuestos.js](js/ejerciciosPropuestos.js).

La página [index.html](index.html) muestra el código de cada función junto a la explicación del ejercicio. El archivo JavaScript descargable reúne esas mismas funciones y ejemplos de llamadas con `console.log`.

### Tabla de verdad — Acceso al evento

`A`: es adulto (18 años o más). `B`: tiene boleta. `C`: es menor y está acompañado por un adulto con boleta. La regla es `(A Y B) O (NO A Y C)`.

| A | B | C | ¿Puede entrar? |
|---|---|---|---|
| F | F | F | No |
| F | F | V | Sí |
| F | V | F | No |
| F | V | V | Sí |
| V | F | F | No |
| V | F | V | No |
| V | V | F | Sí |
| V | V | V | Sí |

### Tabla de decisión — Descuento del gimnasio

| Es estudiante | Edad > 60 | Descuento aplicado |
|---|---|---:|
| No | No | 0 % |
| No | Sí | 40 % |
| Sí | No | 50 % |
| Sí | Sí | 50 %; se conserva el mayor descuento, no se suman |

### Condición de contraseña

Si `A` significa longitud mínima cumplida, `B` significa que contiene un número y `C` significa que no contiene `password`, la contraseña es válida cuando `A Y B Y C`. El mensaje de error se activa con la negación: `NO A O NO B O NO C`.

| A | B | C | ¿Es válida? |
|---|---|---|---|
| F | F | F | No |
| F | F | V | No |
| F | V | F | No |
| F | V | V | No |
| V | F | F | No |
| V | F | V | No |
| V | V | F | No |
| V | V | V | Sí |

## Archivos de la semana

```text
semana-2/
├── index.html
├── README.md
├── js/
│   └── ejerciciosPropuestos.js
└── psc/
    ├── AnioBisiesto.psc
    ├── Propinas.psc
    ├── SemaforoInventario.psc
    ├── TarifaParqueadero.psc
    └── ValidarRegistro.psc
```

La carpeta reúne cinco programas PSeInt, ejercicios complementarios en JavaScript y explicaciones con tablas de verdad, decisiones y pruebas de escritorio.




