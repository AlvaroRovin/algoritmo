Algoritmo sin_titulo
	Definir carrera, semestre, fechaMatricula, montoMatricula, montoCuota, costoTotalMatricula, costoTotalCuotas Como Real
	Definir multaPorRetraso, descuentoMatricula, descuentoPensiones Como Real
	Definir opcionMenu Como caracter
	definir nombreEstudiante Como caracter
	Definir confecha Como Numero 
	
	Escribir "Bienvenido a TECHMAX S.A.C."
	Escribir "Por favor, ingrese el nombre del estudiante:"
	Leer nombreEstudiante
	
	Escribir "Seleccione la carrera del estudiante:"
	Escribir "1. Computaci�n e Inform�tica"
	Escribir "2. Secretariado Ejecutivo"
	Escribir "3. Administraci�n"
	Escribir "Seleccione la opci�n: " Sin Saltar
	Leer carrera
	si (carrera = 1) entonces 
		matricula:= 300
		mensualidad := 450
	FinSi
		si (carrera = 2) Entonces
			matricula := 200
			mensualidad := 350
		FinSi
		si (carrera = 3) Entonces
			matricula := 250
			mesualidad := 400
		FinSi
	
	Escribir "esta en el rango de fecha permitido? "Sin Saltar
	Escribir "(1) = si " Sin Saltar
	Escribir "(0) = no " Sin Saltar
	Leer confecha
	
	Si (confecha = 1) Entonces
		Definir concepto Como Entero
		Escribir "El estudiante esta dentro del rango de las fechas permitidas "
		Escribir "Que concepto deseas pagar "
		Escribir " 1 matricula o mensualidad "
		Escribir " 2 matricula y mensualidad "
		Escribir " 3 todo el semestre "
		Escribir " 4 Seleccione el concepto a pagar " Sin Saltar
		Leer concepto   
		
		si (concepto = 1 ) Entonces
			Definir opcionMM Como Entero
			Escribir "Elije la opci�n para pagar "
			Escribir " 1 Matricula"
			Escribir " 2 Mensualidad"
			Leer opcionMM 
			si opcionMM = 1 Entonces
				Escribir " usted debe pagar " matricula
			sino 
				Escribir "usted debe pagar " mensualidad
			FinSi
		sino 
			Escribir "  no se puede realizar la operacion "
		FinSi
	sino 
		Escribir "El estudiante esta fuera del rango de las fechas "
		Definir multa Como Real
		multa = mensualidad * 0.01
		mensualidad = mensualidad + multa
		
		
	FinSi
	Leer semestre
	
	Escribir "�Est� dentro del rango de fechas de matr�cula y pago de pensiones?"
	Escribir "1. si"
	Escribir "2. no"
	Leer opcionMenu
	
	Segun opcionMenu Hacer
		Caso 1:
			fechaMatricula <- 0
		Caso 2:
			fechaMatricula <- 1
		De Otro Modo:
			Escribir "Opci�n inv�lida. Se asumir� que no est� dentro del rango de fechas."
			fechaMatricula <- 1
	FinSegun
	
	Segun carrera Hacer
		Caso "Computaci�n e Inform�tica":
			montoMatricula <- 300
			montoCuota <- 450
		Caso "Secretariado Ejecutivo":
			montoMatricula <- 200
			montoCuota <- 350
		Caso "Administraci�n":
			montoMatricula <- 250
			montoCuota <- 400
	FinSegun
	
	Si fechaMatricula = 1 Entonces
		multaPorRetraso <- 0.01
	Sino
		multaPorRetraso <- 0
	FinSi
	
	Escribir "�C�mo desea pagar?"
	Escribir "1. Matr�cula individualmente"
	Escribir "2. Matr�cula y 1 cuota"
	Escribir "3. Matr�cula y 2-4 cuotas"
	Escribir "4. Pago de semestre completo (incluye matr�cula)"
	Escribir "5. Pago de toda la carrera"
	Leer opcionMenu
	
	Segun opcionMenu Hacer
		Caso 1:
			costoTotalMatricula <- montoMatricula
			costoTotalCuotas <- montoCuota
		Caso 2:
			costoTotalMatricula <- montoMatricula
			costoTotalCuotas <- montoCuota + (4 * montoCuota * (1 + multaPorRetraso))
		Caso 3:
			costoTotalMatricula <- montoMatricula * 0.95
			costoTotalCuotas <- montoCuota * 0.9 + (4 * montoCuota * (1 + multaPorRetraso))
		Caso 4:
			costoTotalMatricula <- montoMatricula * 0.9
			costoTotalCuotas <- montoCuota * 0.8 + (4 * montoCuota * (1 + multaPorRetraso))
		Caso 5:
			costoTotalMatricula <- montoMatricula * 0.8
			costoTotalCuotas <- montoCuota * 0.6 + (4 * montoCuota * (1 + multaPorRetraso))
		De Otro Modo:
			Escribir "Opci�n de pago inv�lida."
			costoTotalMatricula <- 0
			costoTotalCuotas <- 0
	FinSegun
	
	descuentoMatricula <- montoMatricula - costoTotalMatricula
	descuentoPensiones <- (5 * montoCuota + (4 * montoCuota * (1 + multaPorRetraso))) - costoTotalCuotas
	
	Escribir "Nombre del estudiante:", nombreEstudiante
	Escribir "Carrera:", carrera
	Escribir "Semestre:", semestre
	Escribir "Matr�cula:", costoTotalMatricula
	Escribir "Cuotas:", costoTotalCuotas
	Escribir "Descuento en matr�cula:", descuentoMatricula
	Escribir "Descuento en pensiones:", descuentoPensiones

FinAlgoritmo
