Algoritmo Bisiesto
	Definir anioConsulta Como Entero
	Repetir
		Escribir "Digita el año que deseas comprobar (mayor que 0):"
		Leer anioConsulta
		Si anioConsulta < 1 Entonces
			Escribir "El año debe ser mayor que 0"
		FinSi
	Hasta Que anioConsulta >= 1
	
	Si (anioConsulta Mod 4 = 0 y anioConsulta Mod 100 <> 0) o anioConsulta Mod 400 = 0 Entonces
		Escribir "El año ", anioConsulta, " sí es bisiesto"
	SiNo
		Escribir "El año ", anioConsulta, " no es bisiesto"
	FinSi
	
FinAlgoritmo
