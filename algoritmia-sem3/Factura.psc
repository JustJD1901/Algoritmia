Algoritmo Factura
	Definir valorCuenta, valorPropina, totalConPropina, pagoPorPersona Como Real
	Definir numComensales Como Entero
	Repetir
		Escribir "Ingresa el valor de la cuenta: "
		Leer valorCuenta
		Si valorCuenta <= 0 Entonces
			Escribir "El valor de la cuenta debe ser mayor que 0"
		FinSi
	Hasta Que valorCuenta > 0
	Repetir
		Escribir "Ingresa la cantidad de comensales en la mesa: "
		Leer numComensales
		Si numComensales < 1 Entonces
			Escribir "Debe haber al menos un comensal"
		FinSi
	Hasta Que numComensales >= 1
	
	valorPropina <- calcularPropina(valorCuenta)
	totalConPropina <- valorCuenta + valorPropina
	pagoPorPersona <- dividirCuenta(totalConPropina, numComensales)
	Escribir "El total de la cuenta es: ", totalConPropina, ", con una propina de: ", valorPropina, ". Cada persona paga: ", pagoPorPersona, ", redondeado a: ", redon(pagoPorPersona)
FinAlgoritmo

Funcion propina <- calcularPropina(monto)
	Definir porcentaje Como Real
	Definir respuesta Como Caracter
	Repetir
		Escribir "¿Deseas incluir la propina? (S/N)"
		Leer respuesta
		respuesta <- Mayusculas(respuesta)
		Si respuesta <> "S" y respuesta <> "N" Entonces
			Escribir "Valor inválido, solo se acepta S o N"
		FinSi
	Hasta Que respuesta = "S" o respuesta = "N"
	Si respuesta = "S" Entonces
		Repetir
			Escribir "Ingresa el porcentaje de la propina (0 a 100): "
			Leer porcentaje
			Si porcentaje < 0 o porcentaje > 100 Entonces
				Escribir "El porcentaje debe estar entre 0 y 100"
			FinSi
		Hasta Que porcentaje >= 0 y porcentaje <= 100
		propina <- monto * (porcentaje / 100)
	SiNo
		propina <- 0
	FinSi
FinFuncion

Funcion cuota <- dividirCuenta(total, personas)
	cuota <- total / personas
FinFuncion
