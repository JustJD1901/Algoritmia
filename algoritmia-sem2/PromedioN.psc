Algoritmo PromedioN
	Definir calif1, calif2, calif3, notaMedia Como Real
	Repetir
		Escribir "Ingrese la calificación 1 (0 a 5)"
		Leer calif1
		Si calif1 < 0 o calif1 > 5 Entonces
			Escribir "La calificación debe estar entre 0 y 5"
		FinSi
	Hasta Que calif1 >= 0 y calif1 <= 5
	Repetir
		Escribir "Ingrese la calificación 2 (0 a 5)"
		Leer calif2
		Si calif2 < 0 o calif2 > 5 Entonces
			Escribir "La calificación debe estar entre 0 y 5"
		FinSi
	Hasta Que calif2 >= 0 y calif2 <= 5
	Repetir
		Escribir "Ingrese la calificación 3 (0 a 5)"
		Leer calif3
		Si calif3 < 0 o calif3 > 5 Entonces
			Escribir "La calificación debe estar entre 0 y 5"
		FinSi
	Hasta Que calif3 >= 0 y calif3 <= 5
	
	notaMedia <- (calif1 + calif2 + calif3) / 3
	
	Escribir "Las calificaciones son: ", calif1, ", ", calif2, ", ", calif3, ". El promedio es: ", notaMedia
	
FinAlgoritmo
