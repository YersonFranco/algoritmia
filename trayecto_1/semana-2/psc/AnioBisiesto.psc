Algoritmo AnioBisiesto
	Definir anio Como Entero

	Escribir 'Ingrese un anio:'
	Leer anio

	Si (anio MOD 4 = 0 Y anio MOD 100 <> 0) O anio MOD 400 = 0 Entonces
		Escribir 'El anio es bisiesto.'
	SiNo
		Escribir 'El anio no es bisiesto.'
	FinSi
FinAlgoritmo
