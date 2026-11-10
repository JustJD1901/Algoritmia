Algoritmo Bisiesto
	Definir anioIngresado Como Entero
	Repetir
		Escribir "Ingresa el año que deseas verificar (mayor que 0):"
		Leer anioIngresado
		Si anioIngresado < 1 Entonces
			Escribir "Año no válido, intenta de nuevo"
		FinSi
	Hasta Que anioIngresado >= 1
	
	Si (anioIngresado Mod 4 = 0 y anioIngresado Mod 100 <> 0) o anioIngresado Mod 400 = 0 Entonces
		Escribir "El año ", anioIngresado, " es bisiesto"
	SiNo
		Escribir "El año ", anioIngresado, " no es bisiesto"
	FinSi
	
FinAlgoritmo
