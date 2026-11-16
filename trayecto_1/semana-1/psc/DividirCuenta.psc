Algoritmo DividirCuenta
	Definir subtotal, porcentajePropina, valorPropina, total, pagoPorPersona Como Real
	Definir cantidadPersonas Como Entero

	Escribir "Ingresa el valor de la cuenta:"
	Leer subtotal
	Escribir "Ingresa el porcentaje de propina:"
	Leer porcentajePropina
	Escribir "Ingresa la cantidad de personas:"
	Leer cantidadPersonas

	valorPropina <- subtotal * porcentajePropina / 100
	total <- subtotal + valorPropina
	// En esta version se asume que cantidadPersonas es mayor que cero.
	pagoPorPersona <- total / cantidadPersonas

	Escribir "Valor de la propina: ", valorPropina
	Escribir "Total de la cuenta: ", total
	Escribir "Pago por persona: ", pagoPorPersona
FinAlgoritmo
