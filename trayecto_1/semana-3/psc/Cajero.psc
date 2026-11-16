Algoritmo Cajero
	Definir monto, totalRetirado Como Real
	Definir cantidadRetiros Como Entero

	totalRetirado <- 0
	cantidadRetiros <- 0

	Escribir 'Ingrese un monto a retirar (0 para terminar):'
	Leer monto

	Mientras monto <> 0 Hacer
		Si monto > 0 Entonces
			totalRetirado <- totalRetirado + monto
			cantidadRetiros <- cantidadRetiros + 1
		SiNo
			Escribir 'El monto debe ser positivo.'
		FinSi

		Escribir 'Ingrese otro monto a retirar (0 para terminar):'
		Leer monto
	FinMientras

	Escribir 'Cantidad de retiros: ', cantidadRetiros
	Escribir 'Total retirado: $', totalRetirado
FinAlgoritmo
