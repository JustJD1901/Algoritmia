Algoritmo Cajero
	Definir montoRetiro, totalRetirado Como Real
	Definir cantRetiros Como Entero
	cantRetiros <- 0
	totalRetirado <- 0
	
	Repetir
		Escribir "¿Cuánto dinero deseas retirar? (ingresa 0 para terminar): "
		Leer montoRetiro
		Si montoRetiro < 0 Entonces
			Escribir "El monto no puede ser negativo"
		SiNo
			Si montoRetiro = 0 Entonces
				Escribir "Has salido del sistema"
			SiNo
				totalRetirado <- totalRetirado + montoRetiro
				cantRetiros <- cantRetiros + 1
			FinSi
		FinSi
	Hasta Que montoRetiro = 0
	
	Escribir "Retiraste un total de ", totalRetirado, " en ", cantRetiros, " retiros"
FinAlgoritmo
