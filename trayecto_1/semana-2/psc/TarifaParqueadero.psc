Algoritmo TarifaParqueadero
	Definir tipoVehiculo, minutos Como Entero
	Definir factura Como Caracter
	Definir tarifaHora, horasCobradas, valorPagar Como Entero

	Escribir 'Tipo de vehiculo: 1 para carro, 2 para moto:'
	Leer tipoVehiculo
	Escribir 'Ingrese los minutos de permanencia:'
	Leer minutos
	Escribir 'Tiene factura del centro comercial? Escriba S o N:'
	Leer factura
	factura <- Mayusculas(factura)

	Si minutos < 0 Entonces
		Escribir 'Error: los minutos no pueden ser negativos.'
	SiNo
		Si tipoVehiculo <> 1 Y tipoVehiculo <> 2 Entonces
			Escribir 'Error: tipo de vehiculo no valido.'
		SiNo
			Si minutos <= 15 Entonces
				valorPagar <- 0
			SiNo
				Segun tipoVehiculo Hacer
					1:
						tarifaHora <- 4000
					2:
						tarifaHora <- 2000
				FinSegun

				horasCobradas <- Trunc((minutos + 59) / 60)
				valorPagar <- horasCobradas * tarifaHora

				Si valorPagar > 30000 Entonces
					valorPagar <- 30000
				FinSi

				Si factura = 'S' Entonces
					valorPagar <- valorPagar / 2
				FinSi
			FinSi

			Escribir 'Valor a pagar: $', valorPagar
		FinSi
	FinSi
FinAlgoritmo
