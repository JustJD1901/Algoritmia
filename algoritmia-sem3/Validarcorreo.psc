Algoritmo Validacion
	Definir correo, letra Como Caracter
	Definir largo, pos, intentos, contArrobas, posArroba, posUltimoPunto, contEspacios Como Entero
	Definir correoValido Como Logico
	intentos <- 0
	correoValido <- Falso
	
	Mientras intentos < 3 Y correoValido = Falso Hacer
		Escribir "Escribe el correo con el que vas a ingresar: "
		Leer correo
		largo <- Longitud(correo)
		contArrobas <- 0
		contEspacios <- 0
		posArroba <- -1
		posUltimoPunto <- -1
		
		Para pos <- 0 Hasta largo - 1 Con Paso 1 Hacer
			letra <- Subcadena(correo, pos, pos)
			Si letra = "@" Entonces
				contArrobas <- contArrobas + 1
				posArroba <- pos
			FinSi
			Si letra = "." Entonces
				posUltimoPunto <- pos
			FinSi
			Si letra = " " Entonces
				contEspacios <- contEspacios + 1
			FinSi
		FinPara
		
		Si contArrobas = 1 Y contEspacios = 0 Y posArroba > 0 Y posUltimoPunto > posArroba + 1 Y posUltimoPunto < largo - 1 Entonces
			Escribir "Correo válido"
			correoValido <- Verdadero
		SiNo
			intentos <- intentos + 1
			Si intentos < 3 Entonces
				Escribir "Correo no válido, te quedan ", 3 - intentos, " intentos"
			SiNo
				Escribir "Correo no válido, agotaste tus intentos"
			FinSi
		FinSi
	FinMientras
FinAlgoritmo
