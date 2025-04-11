Algoritmo CompraProducto
	Definir cU, cP Como Entero;
	Definir t, p Como Real;
	Escribir "Ingrese el precio del 1° producto (-1 para Salir):";
	Leer p;
	cP <- 0;
	t <- 0;
	Mientras p <> -1 Hacer
		Escribir "Ingrese la cantidad:";
		Leer cU;
		cP <- cP + cU;
		t <- t + (p*cU);
		Escribir "Ingrese el precio del siguiente producto (-1 para Salir):";
		Leer p;
	FinMientras
	Escribir "Cantidad de productos: ",cP;
	Escribir "Total a pagar: $", t;
FinAlgoritmo
