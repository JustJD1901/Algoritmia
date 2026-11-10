Algoritmo Calificaciones
	Definir notas, sumaNotas, promedio, notaMaxima, notaMinima Como Real
	Definir i, totalNotas, cantReprobados Como Entero
	Repetir
		Escribir "Ingresa la cantidad de notas a registrar: "
		Leer totalNotas
		Si totalNotas < 1 Entonces
			Escribir "Debes registrar al menos una nota"
		FinSi
	Hasta Que totalNotas >= 1
	Dimension notas[totalNotas]
	sumaNotas <- 0
	cantReprobados <- 0
	
	Para i <- 0 Hasta totalNotas - 1 Con Paso 1 Hacer
		Repetir
			Escribir "Ingresa la nota del estudiante ", i + 1, " (0 a 5): "
			Leer notas[i]
			Si notas[i] < 0 o notas[i] > 5 Entonces
				Escribir "La nota debe estar entre 0 y 5"
			FinSi
		Hasta Que notas[i] >= 0 y notas[i] <= 5
	FinPara
	
	notaMaxima <- notas[0]
	notaMinima <- notas[0]
	Para i <- 0 Hasta totalNotas - 1 Con Paso 1 Hacer
		sumaNotas <- sumaNotas + notas[i]
		Si notas[i] < 3 Entonces
			cantReprobados <- cantReprobados + 1
		FinSi
		Si notas[i] > notaMaxima Entonces
			notaMaxima <- notas[i]
		FinSi
		Si notas[i] < notaMinima Entonces
			notaMinima <- notas[i]
		FinSi
	FinPara
	
	promedio <- sumaNotas / totalNotas
	
	Escribir "El promedio de las notas es: ", promedio, ". La nota más alta fue: ", notaMaxima, ". La nota más baja fue: ", notaMinima, ". Estudiantes que reprobaron: ", cantReprobados
FinAlgoritmo
