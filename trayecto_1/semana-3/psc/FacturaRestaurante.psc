SubProceso CalcularSubtotal(precio1, cantidad1, precio2, cantidad2, precio3, cantidad3, subtotal Por Referencia)
	subtotal <- precio1 * cantidad1 + precio2 * cantidad2 + precio3 * cantidad3
FinSubProceso

SubProceso CalcularPropina(subtotal, porcentaje, propina Por Referencia)
	propina <- subtotal * porcentaje / 100
FinSubProceso

SubProceso CalcularTotal(subtotal, propina, total Por Referencia)
	total <- subtotal + propina
FinSubProceso

SubProceso CalcularPagoPorPersona(total, comensales, pago Por Referencia)
	pago <- Redon(total / comensales)
FinSubProceso

Algoritmo FacturaRestaurante
	Definir precio1, precio2, precio3 Como Real
	Definir cantidad1, cantidad2, cantidad3, comensales Como Entero
	Definir porcentajePropina, subtotal, propina, total, pagoPorPersona Como Real
	Definir deseaPropina Como Caracter

	Escribir 'Precio del producto 1:'
	Leer precio1
	Escribir 'Cantidad del producto 1:'
	Leer cantidad1
	Escribir 'Precio del producto 2:'
	Leer precio2
	Escribir 'Cantidad del producto 2:'
	Leer cantidad2
	Escribir 'Precio de la bebida:'
	Leer precio3
	Escribir 'Cantidad de bebidas:'
	Leer cantidad3

	CalcularSubtotal(precio1, cantidad1, precio2, cantidad2, precio3, cantidad3, subtotal)

	Escribir 'Desea agregar propina? Escriba S o N:'
	Leer deseaPropina
	deseaPropina <- Mayusculas(deseaPropina)
	porcentajePropina <- 0
	Si deseaPropina = 'S' Entonces
		Escribir 'Ingrese el porcentaje de propina:'
		Leer porcentajePropina
	FinSi

	CalcularPropina(subtotal, porcentajePropina, propina)
	CalcularTotal(subtotal, propina, total)

	Escribir 'Ingrese la cantidad de comensales:'
	Leer comensales
	Si comensales > 0 Entonces
		CalcularPagoPorPersona(total, comensales, pagoPorPersona)
		Escribir 'Subtotal: $', subtotal
		Escribir 'Propina: $', propina
		Escribir 'Total de la cuenta: $', total
		Escribir 'Pago por persona (redondeado): $', pagoPorPersona
	SiNo
		Escribir 'La cantidad de comensales debe ser mayor que cero.'
	FinSi
FinAlgoritmo
