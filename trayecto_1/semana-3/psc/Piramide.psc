Algoritmo Piramide
	Definir niveles, fila, columna Como Entero

	Escribir 'Ingrese la cantidad de niveles de la piramide:'
	Leer niveles

	Si niveles <= 0 Entonces
		Escribir 'La cantidad de niveles debe ser mayor que cero.'
	SiNo
		Para fila <- 1 Hasta niveles Hacer
			Para columna <- 1 Hasta niveles - fila Con Paso 1 Hacer
				Escribir Sin Saltar ' '
			FinPara
			Para columna <- 1 Hasta 2 * fila - 1 Con Paso 1 Hacer
				Escribir Sin Saltar '*'
			FinPara
			Escribir ''
		FinPara
	FinSi
FinAlgoritmo
