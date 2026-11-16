Algoritmo Calificaciones
	Definir nota, suma, promedio, mayor, menor Como Real
	Definir reprobados, i Como Entero

	suma <- 0
	reprobados <- 0
	mayor <- 0
	menor <- 5

	Para i <- 1 Hasta 5 Hacer
		Escribir 'Ingrese la nota del estudiante ', i, ' (de 0 a 5):'
		Leer nota
		suma <- suma + nota

		Si nota > mayor Entonces
			mayor <- nota
		FinSi
		Si nota < menor Entonces
			menor <- nota
		FinSi
		Si nota < 3 Entonces
			reprobados <- reprobados + 1
		FinSi
	FinPara

	promedio <- suma / 5
	Escribir 'Promedio: ', promedio
	Escribir 'Nota mas alta: ', mayor
	Escribir 'Nota mas baja: ', menor
	Escribir 'Estudiantes reprobados: ', reprobados
FinAlgoritmo
