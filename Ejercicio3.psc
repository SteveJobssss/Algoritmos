Proceso Ejercicio3
	
	//Objetivo: Elaborar un prohrama en pseint que pida una palabra digitada y:
	//convierta las mayusculas a minusculas y viceversa
	//determinar si tiene mas vocales que consonantes o no, el programa debe retornar verdadero si cumple la conddicion, caso contrario falso.
	//que invierta todos los caracteres de una hilera EJ: amor - Roma
	//determinar si tiene las 5 vocales o no, debe retornar verdadero si es asi, falso si no
	
	
	//declaramos variables
	Definir palabraIng, palabraCaps, palabraInv Como Caracter;
	Definir resultadoCons, resultadoVoc como Logico;
	Definir respuestaCaps como	 entero; 
	
	//pedimos palabra
	Escribir("Buen Dia, digite la palabra deseada");
	Leer palabraIng;
	
	//Preguntamos si deseamos pasarlas a mayus o minus
	Escribir("Convertir a: ");
	Escribir("1 = Mayusculas");
	Escribir("2 = Minusculas");
	Leer respuestaCaps;
	
	//Operacion para intercambio
	si respuestaCaps >0 y respuestaCaps <3 Entonces
		si respuestaCaps == 1 Entonces
			Escribir "El texto en Caps es: ",Mayusculas(palabraIng);
		SiNo
			Escribir "El texto en Minus es: ",Minusculas(palabraIng);
		FinSi
	SiNo
		Escribir "Porfavor Ingrese una opcion correcta";
	FinSi
	
	

FinProceso
