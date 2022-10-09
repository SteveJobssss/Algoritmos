
SubProceso conteovocales <-vocales(Text)
	definir vocals Como caracter;
	definir i como entero;
	definir vocalA,vocalE,vocalI,vocalO,vocalU Como Entero;
	vocalA <- 0;
	vocalE <- 0;
	vocalI <- 0;
	vocalO <- 0;
	vocalU <- 0;
	para i <- 0 Hasta Longitud(text)-1 con paso 1 Hacer
		vocals <- subcadena(text,i,i);
		si vocals = "a" Entonces
			vocalA <- vocalA+1;
		FinSi
		si vocals = "e" Entonces
			vocalE <- vocalE+1;
		FinSi
		si vocals = "i" Entonces
			vocalI <- vocalI+1;
		FinSi
		si vocals = "o" Entonces
			vocalO <- vocalO+1;
		FinSi
		si vocals = "u" Entonces
			vocalU <- vocalU+1;
		FinSi
	FinPara
	Escribir " ";
	escribir "1. Un total de vocales A -> ",vocalA, " veces";
	escribir "2. Un total de vocales E -> ",vocalE, " veces";
	escribir "3. Un total de vocales I -> ",vocalI, " veces";
	escribir "4. Un total de vocales O -> ",vocalO, " veces";
	escribir "5. Un total de vocales U -> ",vocalU, " veces";
FinSubProceso

SubProceso ConteoPalabras<-conteoP(Text)
	definir i como entero;
	definir ConteoPalabras como entero;
	ConteoPalabras <- 1;
	para i <-1 hasta Longitud(Text) - 1 con paso 1 Hacer
		si Subcadena(Text,i,i) = " " Entonces
			Conteopalabras <- Conteopalabras + 1;
		FinSi
	FinPara
FinSubProceso
SubProceso newtext <- espAsterisk (Text)
	definir newtext como caracter;
	definir i Como Entero;
	newtext<- "";
	i<-0;
	Mientras (i<= Longitud(text)) Hacer
		si Subcadena(Text,i,i) = " " Entonces
			newtext <- Concatenar(newtext,"*");
			i <- i+1;
		SiNo
			newtext <- Concatenar(newtext,Subcadena(text,i,i));
			i <- i+1;
		FinSi
	FinMientras
FinSubProceso
SubProceso newWord <- Acrostico (Text)
	definir newWord Como Caracter;
	definir i Como Entero;
	i <- 0;
	newWord <- Subcadena(Text,0,0);
	para i <- 0 hasta Longitud(Text)-1 con paso 1 Hacer
		si Subcadena(Text,i,i)= " " Entonces
			newWord <- Concatenar(newWord,Subcadena(Text,i+1,i+1));
			
		FinSi
	FinPara
FinSubProceso


Algoritmo Exercise4
	Escribir " Ejercicio Fin de Unidad "; 
	definir Text Como Caracter;
	Escribir "Ingrese un texto a su gusto", Sin Saltar;
	leer Text;
	repetir 
		si Text = " " Entonces
			leer Text;
		SiNo
			escribir " No puede continuar si este campo esta vacio, escriba una frase ";
			leer Text;
		FinSi
	Hasta Que Text > " ";
	Text <- Minusculas(Text);
	Escribir "El total de palabras de su frase tiene, ",ConteoP(Text)," palabras";
	Escribir "Su frase tiene : ",vocales(Text);
	escribir "Su nuevo texto es el siguiente, ", espAsterisk(Text);
	Escribir "Tenemos su acrostico y es el siguiente: ",acrostico(Text);
FinAlgoritmo

//1.Calcule cuantas palabras tiene la frase digitada.
//2.Contar  del  número  de  vocales  (de cada  una)  que  aparecen.  
//Por ejemplo,si  el usuario digita la frase "murciélago en su cueva", 
//el algoritmo debe mostrar:a.Vocal "a": 2b.Vocal "e": 3c.Vocal "i": 1d.Vocal "o": 1e.Vocal "u": 33.
//Sustituir todos los espacios en blanco de la frase digitada por un asterisco(*). 
//Por ejemplo,  si  la  frase  digitada  es "hola  que  tal",  el  algoritmo  debe  imprimir  "hola*que*tal".
//4.Obtenga lapalabra oculta en la fraseformándola al unir primeras letras de cada palabra.
//Por ejemplo,si  la  frase  es "Estoy seguro te urge devolver intereses ahora" la palabra oculta es Estudia