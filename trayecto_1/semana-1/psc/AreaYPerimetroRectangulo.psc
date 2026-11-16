Algoritmo AreaYPerimetroRectangulo
	Definir base, altura, area, perimetro Como Real

	Escribir "Ingresa la base del rectangulo:"
	Leer base
	Escribir "Ingresa la altura del rectangulo:"
	Leer altura

	area <- base * altura
	perimetro <- 2 * (base + altura)

	Escribir "El area es: ", area
	Escribir "El perimetro es: ", perimetro
FinAlgoritmo
