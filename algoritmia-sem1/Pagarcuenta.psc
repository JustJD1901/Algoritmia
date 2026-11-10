Algoritmo Pagarcuenta
	Definir montoCuenta, porcentajePropina, valorPropina, montoTotal, valorPorPersona Como Real
	Definir cantComensales Como Entero
	Escribir '¿Cuál fue el valor de la cuenta?'
	Leer montoCuenta
	Escribir '¿Qué porcentaje de propina deseas dejar?'
	Leer porcentajePropina
	Escribir '¿Cuántas personas fueron a comer?'
	Leer cantComensales
	valorPropina <- montoCuenta * porcentajePropina / 100
	montoTotal <- montoCuenta + valorPropina
	valorPorPersona <- montoTotal / cantComensales
	Escribir 'La propina fue de: ', valorPropina, ', el total de la cuenta fue: ', montoTotal, ', cada persona paga: ', valorPorPersona
FinAlgoritmo
