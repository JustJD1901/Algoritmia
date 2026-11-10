Algoritmo ValidarRegistro
	Definir edadUsuario Como Entero
	Definir aceptaTerminos Como Cadena
	Escribir '¿Cuántos años tienes?'
	Leer edadUsuario
	Si edadUsuario < 0 o edadUsuario > 120 Entonces
		Escribir 'La edad ingresada no es válida'
	SiNo
		Escribir '¿Aceptas los términos y condiciones? (S/N)'
		Leer aceptaTerminos
		aceptaTerminos <- Mayusculas(aceptaTerminos)
		Si edadUsuario >= 14 Y aceptaTerminos = 'S' Entonces
			Escribir 'Registro exitoso'
		SiNo
			Escribir 'No es posible registrarte'
		FinSi
	FinSi
FinAlgoritmo
