Algoritmo ValidarUsuario
	Definir correo Como Cadena
	Definir intentos, posicion Como Entero
	Definir tieneArroba, tienePunto, correoValido Como Logico

	intentos <- 0
	correoValido <- Falso

	Mientras intentos < 3 Y correoValido = Falso Hacer
		Escribir 'Ingrese un correo que contenga @ y .:'
		Leer correo
		intentos <- intentos + 1
		tieneArroba <- Falso
		tienePunto <- Falso

		Si Longitud(correo) > 0 Entonces
			Para posicion <- 1 Hasta Longitud(correo) Hacer
				Si Subcadena(correo, posicion, posicion) = '@' Entonces
					tieneArroba <- Verdadero
				FinSi
				Si Subcadena(correo, posicion, posicion) = '.' Entonces
					tienePunto <- Verdadero
				FinSi
			FinPara
		FinSi

		Si tieneArroba Y tienePunto Entonces
			correoValido <- Verdadero
		SiNo
			Escribir 'Correo no valido. Intento ', intentos, ' de 3.'
		FinSi
	FinMientras

	Si correoValido Entonces
		Escribir 'Usuario validado.'
	SiNo
		Escribir 'Se agotaron los tres intentos.'
	FinSi
FinAlgoritmo

