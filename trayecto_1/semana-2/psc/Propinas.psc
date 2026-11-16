Algoritmo Propinas
	Definir subtotal, porcentajePropina Como Real
	Definir cantidadPersonas Como Entero
	Definir valorPropina, totalConPropina, pagoPorPersona Como Real

	Escribir 'Ingrese el valor de la cuenta:'
	Leer subtotal
	Escribir 'Ingrese el porcentaje de propina (por ejemplo, 10):'
	Leer porcentajePropina
	Escribir 'Ingrese la cantidad de personas:'
	Leer cantidadPersonas

	Si cantidadPersonas <= 0 Entonces
		Escribir 'El numero de personas debe ser mayor que cero.'
	SiNo
		valorPropina <- subtotal * porcentajePropina / 100
		totalConPropina <- subtotal + valorPropina
		pagoPorPersona <- totalConPropina / cantidadPersonas
		Escribir 'Propina: $', valorPropina
		Escribir 'Total con propina: $', totalConPropina
		Escribir 'Pago por persona: $', pagoPorPersona
	FinSi
FinAlgoritmo
