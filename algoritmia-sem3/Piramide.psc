Algoritmo Piramide
	Definir totalFilas, nivel, blancos, estrellas Como Entero
	Repetir
		Escribir "¿Cuántas filas tendrá la pirámide?"
		Leer totalFilas
		Si totalFilas < 1 Entonces
			Escribir "Ingresa un número de filas mayor que 0"
		FinSi
	Hasta Que totalFilas >= 1
	
	Para nivel <- 1 Hasta totalFilas Con Paso 1 Hacer
		Para blancos <- 1 Hasta totalFilas - nivel Con Paso 1 Hacer
			Escribir Sin Saltar " "
		FinPara
		Para estrellas <- 1 Hasta 2 * nivel - 1 Con Paso 1 Hacer
			Escribir Sin Saltar "*"
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo
