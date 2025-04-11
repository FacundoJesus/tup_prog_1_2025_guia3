Algoritmo FabricaTornillos
	Definir codigo, cantFallas, minFallas, maxFallas, cantProductos, menorFallaLote, prcFallasmenorLote, mayorFallaLote, prcFallasmayorLote, cantLotes, totalFallas, i Como Entero;
	Definir medidaEsperada, error, medida, mayorError Como Real;
	
	Escribir "Ingrese el número de código - (0 Para Salir):";
	Leer codigo;
	codigo <- abs(codigo);
	
	cantProductos <- 0;
	minFallas <- 11;
	maxFallas <- -1;
	cantLotes <- 0;
	totalFallas <- 0;
	Mientras codigo <> 0 Hacer
		cantLotes <- cantLotes + 1;
		Escribir "Ingrese la medida esperada:";
		Leer medidaEsperada;
		
		cantFallas <- 0;
		mayorError <- 0;
		Para i<-1 Hasta 10 Hacer
			Escribir "Ingrese la medida del ",i,"º producto:";
			Leer medida;
			error <- abs(medida - medidaEsperada);
			Si error > 0.01 Entonces // Verificar si hay fallas.
				cantFallas <- cantFallas + 1;
			FinSi
			Si error > mayorError Entonces // Verificar si es el mayor error absoluto.
				mayorError <- error;
			FinSi
		FinPara
		
		Escribir "El mayor error absoluto es: ", mayorError;
		Escribir "El porcentaje de productos con fallas del lote ", codigo," es:", (cantFallas / 10) * 100,"%";
		cantProductos <- cantProductos + 10; // Cantidad productos de todos  los lotes.
		totalFallas <- totalFallas + cantFallas; //Total de fallas de todos los lotes.
		
		Si cantFallas < minFallas Entonces
			menorFallaLote <- codigo;
			minFallas <- cantFallas;
		FinSi
		
		Si cantFallas > maxFallas Entonces
			mayorFallaLote <- codigo;
			maxFallas <- cantFallas;
		FinSi
		
		Escribir "Ingrese el número de código - (0 Para Salir):";
		Leer codigo;
		codigo <- abs(codigo);
	FinMientras
	
	
	Si cantLotes == 0 Entonces
		Escribir "No se procesaron lotes.";
	SiNo
		prcFallasmenorLote <- (minFallas/10) * 100;
		prcFallasmayorLote <- (maxFallas/10) * 100;
		Escribir "----------------------------------";
		Escribir "Cantidad de lotes procesados: ", cantLotes;
		Escribir "Porcentaje total de fallas: " (totalFallas/cantProductos) * 100,"%";
		Escribir "Lote con menor cantidad de fallas: L Nº", menorFallaLote, " con ",prcFallasmenorLote,"% de fallas.";
		Escribir "Lote con mayor cantidad de fallas: L Nº", mayorFallaLote," con ",prcFallasmayorLote,"% de fallas.";
	FinSi

FinAlgoritmo
