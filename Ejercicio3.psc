Proceso Ejercicio3
	
	//Objetivo: Elaborar un prohrama en pseint que pida una palabra digitada y:
	//convierta las mayusculas a minusculas y viceversa----------------------------------
	//determinar si tiene mas vocales que consonantes o no, el programa debe retornar verdadero si cumple la condicion, caso contrario falso.---------------------
	//que invierta todos los caracteres de una hilera EJ: amor - Roma
	//determinar si tiene las 5 vocales o no, debe retornar verdadero si es asi, falso si no
	
	//declaramos variables
	Definir palabraIng, palabraCaps, palabraInv, vocalesCar Como Caracter;
	Definir resultadoCons, resultadoVoc como Logico;
	Definir respuestaCaps, longPalabra, longCuenta, vocales, consonante como entero;
	Definir i Como Entero;
	
	
	longCuenta=1;
	vocales=0;
	consonante=0;
	
	
	//Establecemos las vocales
	Dimension vocalesCar(5);
	vocalesCar(1)="a";
	vocalesCar(2)="e";
	vocalesCar(3)="i";
	vocalesCar(4)="o";
	vocalesCar(5)="u";
	
	
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
	
	Escribir(" ")
	

	
	//determinamos si tiene mas vocales que consonantes
	longPalabra=Longitud(palabraIng);
	Mientras longCuenta <= longPalabra Hacer
		Segun Subcadena(palabraIng, longCuenta, longCuenta) Hacer
			'A' O 'a':
				vocales=vocales+1;
			"E" o "e":
				vocales=vocales+1;
			"I" o "i":
				vocales=vocales+1;
			"O" o "o":
				vocales=vocales+1;
			"U" o "u":
				vocales=vocales+1;	
			De Otro Modo:
				consonante = consonante + 1;
		FinSegun
		longCuenta=longCuenta+1;
	FinMientras
	
	Escribir vocales;
	Escribir consonante;
	
	si vocales > consonante Entonces
		resultadoVoc = Verdadero;
		Escribir("si la palabra tiene mas vocales que consonantes dara Verdadero, caso contrario marcara Falso");
		Escribir ("El resultado es: "), resultadoVoc;
	SiNo
		resultadoVoc = Falso;
		Escribir("si la palabra tiene mas vocales que consonantes dara Verdadero, caso contrario marcara Falso");
		Escribir ("El resultado es: "), resultadoVoc;
	FinSi

	
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
