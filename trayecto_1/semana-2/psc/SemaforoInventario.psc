Algoritmo SemaforoInventario
	Definir stock Como Entero

	Escribir 'Ingrese la cantidad de productos en inventario:'
	Leer stock

	Si stock < 0 Entonces
		Escribir 'Error: el inventario no puede ser negativo.'
	SiNo
		Si stock = 0 Entonces
			Escribir 'Rojo: agotado.'
		SiNo
			Si stock <= 10 Entonces
				Escribir 'Amarillo: hay que pedir.'
			SiNo
				Escribir 'Verde: todo bien.'
			FinSi
		FinSi
	FinSi
FinAlgoritmo
