Algoritmo Parqueadero
	Definir tipoVehiculo, minutosEstancia, horasCobrar Como Entero
	Definir tarifaHora, totalPagar Como Real
	Definir tieneFacturas Como Caracter
	tarifaHora <- 0
	totalPagar <- 0
	Escribir "Tipo de vehículo (1 = carro, 2 = moto):"
	Leer tipoVehiculo
	Escribir "Minutos de permanencia: "
	Leer minutosEstancia
	Escribir "¿Presenta facturas de compra? (S/N)"
	Leer tieneFacturas
	tieneFacturas <- Minusculas(tieneFacturas)
	Si minutosEstancia < 0 Entonces
		Escribir "Error: el tiempo no puede ser negativo"
	SiNo
		Si tieneFacturas <> "s" y tieneFacturas <> "n" Entonces
			Escribir "Error: responde únicamente S o N"
		SiNo
			Segun tipoVehiculo Hacer
				1:
					tarifaHora <- 4000
				2:
					tarifaHora <- 2000
				De Otro Modo:
					tarifaHora <- 0
			FinSegun
			Si tarifaHora = 0 Entonces
				Escribir "El tipo de vehículo no es válido"
			SiNo
				Si minutosEstancia < 15 Entonces
					totalPagar <- 0
				SiNo
					horasCobrar <- trunc((minutosEstancia + 59) / 60)
					totalPagar <- horasCobrar * tarifaHora
					Si totalPagar > 30000 Entonces
						totalPagar <- 30000
					FinSi
					Si tieneFacturas = "s" Entonces
						totalPagar <- totalPagar / 2
					FinSi
				FinSi
				Escribir "Total a pagar: $", totalPagar
			FinSi
		FinSi
	FinSi
FinAlgoritmo
