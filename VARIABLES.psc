Algoritmo VARIABLES
	Definir Nombre Como Caracter
	Definir Apellido Como Caracter
	Definir Pago1, Pago2, Total Como Entero
	Definir Impuestos, PagoNeto Como Real
	Nombre := "Alvaro"
	Apellidos:= "Rios"
	Pago1 := 2500
	Pago2 := 1300
	Total := Pago1 + Pago2 
	Impuestos := Total * 0.08
	PagoNeto := Total - Impuestos 
	Escribir "Tu eres: " nombre " " Apellidos 
	Escribir "Tu primer pago es: " Pago1 " y tu segundo pago es: " Pago2 
	Escribir "Tu pago total es: " Total 
	Escribir "Tus impuestos son: " Impuestos 
	Escribir "Tu pagoneto es: " PagoNeto 
FinAlgoritmo
