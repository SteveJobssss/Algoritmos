Proceso Ejercicio3
	
	//Objetivo: Elaborar un prohrama en pseint que pida una palabra digitada y:
	
	//determinar si tiene las 5 vocales o no, debe retornar verdadero si es asi, falso si no
	
	//declaramos variables
	Definir palabraIng, palabraInv, vocalesCar Como Caracter;
	Definir resultadoCons, resultadoVoc como Logico;
	Definir respuestaCaps, longPalabra, longCuenta, vocales, consonante como entero;
	Definir i Como Entero;
	
	longCuenta=1;
	vocales=0;
	consonante=0;
	
	//Establecemos las vocales
	//Dimension vocalesCar(5);
	//vocalesCar(1)="a";
	//vocalesCar(2)="e";
	//vocalesCar(3)="i";
	//vocalesCar(4)="o";
	//vocalesCar(5)="u";
	
	//pedimos palabra
	Escribir("Buen Dia, digite la palabra deseada");
	Leer palabraIng;
	
	//Preguntamos si deseamos pasarlas a mayus o minus
	Escribir("Convertir a: ");
	Escribir("1 = Mayusculas");
	Escribir("2 = Minusculas");
	Leer respuestaCaps;
	
	//Operacion para intercambio
	si respuestaCaps > 0 y respuestaCaps < 3 Entonces
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
	
	//Escribimos el resultado, en caso de haber mas vocales que consonantes este sera Verdadero, caso contrario, sera falso.
	si vocales > consonante Entonces
		resultadoVoc = Verdadero;
		Escribir("si la palabra tiene mas vocales que consonantes dara Verdadero, caso contrario marcara Falso");
		Escribir ("El resultado es: "), resultadoVoc;
	SiNo
		resultadoVoc = Falso;
		Escribir("si la palabra tiene mas vocales que consonantes dara Verdadero, caso contrario marcara Falso");
		Escribir ("El resultado es: "), resultadoVoc;
	FinSi
	
	Escribir " ";
	
	
	//Invertimos los caracteres
	longCuenta=1;
	palabraInv="";
	Mientras longPalabra > 0 Hacer
		palabraInv=palabraInv+Subcadena(palabraIng,longPalabra,longPalabra)
		longPalabra=longPalabra-1;
	FinMientras
	
	Escribir"La palabra: ",palabraIng," con sus carecteres invertidos se escribiria: ",palabraInv;
	Escribir " ";
	
	
	//leemos las letras en la palabra y comparamos
	
	//-----------------------------------------
	
	//PENDIENTE
	
	//-----------------------------------------

FinProceso