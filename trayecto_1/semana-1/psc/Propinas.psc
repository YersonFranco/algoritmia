Algoritmo CalculadoraDePropinas
	Definir cuenta, porcentaje, propina, total, pagoPorPersona Como Real
	Definir personas Como Entero

	Escribir "Ingresa el valor de la cuenta:"
	Leer cuenta
	Escribir "Ingresa el porcentaje de propina:"
	Leer porcentaje
	Escribir "Ingresa la cantidad de personas:"
	Leer personas

	propina <- cuenta * porcentaje / 100
	total <- cuenta + propina
	// En esta version se asume que personas es mayor que cero.
	pagoPorPersona <- total / personas

	Escribir "Valor de la propina: ", propina
	Escribir "Total de la cuenta: ", total
	Escribir "Pago por persona: ", pagoPorPersona
FinAlgoritmo
