Algoritmo FUNCIONESMATEMATICAS 
	Definir ValorAbs, ParteEntera, Redondear, RaizC, NumX Como Real 
	Escribir "Ingresa el numero: " 
	Leer NumX 
	ValorAbs := abs(NumX)
	ParteEntera := trunc(NumX)
	Redondear := redon(NumX)
	RaizC := Raiz(NumX)
	Escribir " El valor absoluto de: " NumX " es: " ValorAbs
	Escribir "La parte entera de: " NumX " es: " ParteEntera
	Escribir " El numero: " NumX " redondeado es: " Redondear
	Escribir " La raiz cuadrada de: " NumX " es: " RaizC
FinAlgoritmo
