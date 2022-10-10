Proceso Ejercicio3
	
	//Objetivo: Elaborar un prohrama en pseint que pida una palabra digitada y:
	//convierta las mayusculas a minusculas y viceversa----------------------------------
	//determinar si tiene mas vocales que consonantes o no, el programa debe retornar verdadero si cumple la condicion, caso contrario falso.
	//que invierta todos los caracteres de una hilera EJ: amor - Roma
	//determinar si tiene las 5 vocales o no, debe retornar verdadero si es asi, falso si no
	
	//declaramos variables
	Definir palabraIng, palabraCaps, palabraInv, vocalesCar Como Caracter;
	Definir resultadoCons, resultadoVoc como Logico;
	Definir respuestaCaps, longPalabra, longCuenta, sumaCuenta como entero;
	Definir i Como Entero;
	
	
	//Establecemos las vocales
	Dimension vocalesCar(5);
	vocalesCar(0)="a";
	vocalesCar(1)="e";
	vocalesCar(2)="i";
	vocalesCar(3)="o";
	vocalesCar(4)="u";
	
	
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
	

	
	//determinamos si tiene mas vocales que consonantes
	longPalabra=Longitud(palabraIng);
	longCuenta=1;
	sumaCuenta=0;
	Mientras longCuenta <= longPalabra Hacer
		Segun Subcadena(palabraIng, longCuenta, longCuenta) Hacer
			'a' o 'A':
				sumaCuenta=sumaCuenta+1;
		FinSegun
		x=x+1;
	FinMientras
	
	//-----------------------------------------
	
	
	//Invertimos los caracteres
	
	//-----------------------------------------
	
	//PENDIENTE
	
	//-----------------------------------------
	
	
	//leemos las letras en la palabra y comparamos
	
	//-----------------------------------------
	
	//PENDIENTE
	
	//-----------------------------------------

FinProceso
