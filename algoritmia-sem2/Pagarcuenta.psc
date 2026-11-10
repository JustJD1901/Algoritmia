Algoritmo Pagarcuenta
	Definir montoCuenta, porcentajePropina, valorPropina, montoTotal, valorPorPersona Como Real
	Definir cantComensales Como Entero
	Repetir
		Escribir '¿Cuál fue el valor de la cuenta?'
		Leer montoCuenta
		Si montoCuenta <= 0 Entonces
			Escribir 'El valor de la cuenta debe ser mayor que 0'
		FinSi
	Hasta Que montoCuenta > 0
	Repetir
		Escribir '¿Qué porcentaje de propina deseas dejar? (0 a 100)'
		Leer porcentajePropina
		Si porcentajePropina < 0 o porcentajePropina > 100 Entonces
			Escribir 'El porcentaje debe estar entre 0 y 100'
		FinSi
	Hasta Que porcentajePropina >= 0 y porcentajePropina <= 100
	Repetir
		Escribir '¿Cuántas personas fueron a comer?'
		Leer cantComensales
		Si cantComensales < 1 Entonces
			Escribir 'Debe haber al menos una persona'
		FinSi
	Hasta Que cantComensales >= 1
	valorPropina <- montoCuenta * porcentajePropina / 100
	montoTotal <- montoCuenta + valorPropina
	valorPorPersona <- montoTotal / cantComensales
	Escribir 'La propina fue de: ', valorPropina, ', el total de la cuenta fue: ', montoTotal, ', cada persona paga: ', valorPorPersona
FinAlgoritmo
