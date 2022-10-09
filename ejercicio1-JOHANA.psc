
Proceso ejercicio1
	
	Escribir "HOLA PROFE ;" ;
	
    definir  busqueda Como Caracter;
	
	Definir nombre, fecha Como Caracter;  //definimos xq registramos palabras
	Definir cedula Como Caracter;//definimos xq registramos numeros enteros
	Definir limite, p, i, dt, entrada, registro, j, k, privado, alergia  Como Entero; 
	Definir bandera, str Como Logico;
	
	limite=10;
	entrada=0;
	p=0;
	bandera=Falso;
	i=0;
    dt=0;
    registro=0;
	j=0;
	registro=0;	
	k=0;
	
	//creamos los vectores
	Dimension nombre[limite];
	Dimension privado[limite];
	Dimension cedula[limite];
    Dimension fecha[limite];
	Dimension alergia[limite];
	
	Escribir "";
	
	Repetir
		Escribir "Bases de datos: ";
		Escribir "1.Registro del paciente.";
		Escribir "2.Historia clinica. ";
		Escribir "3.Ultima visita: ";
		Escribir "4.Pacientes con alergias: ";
		Escribir "5.Pacientes privados: ";
		Escribir "6.Todos los pacientes: ";
		Escribir "";
		Escribir Sin Saltar ""; leer entrada;
		Escribir "";
		
		Segun entrada Hacer
				//pedimos los datos del paciente para archivarlos en la memoria...
			1:  
			    i=dt;
				bandera<-Falso;
				para i <-0 hasta limite -1 con paso 1 Hacer
						Escribir Sin Saltar "Nombre del paciente: ";
						Leer nombre[i];
						Escribir Sin Saltar"Cedula de ciudadania: ";
						Leer cedula[i];
						Escribir sin saltar "Fecha ultima consulta (dd/mm/aaaa): ";
						Leer fecha[i];
						Escribir sin saltar "Seguridad social (1: publico, 2: privado) ";
						Leer privado[i];
						Escribir Sin Saltar "Tiene alergias (1: si, 2: no) ";
						Leer alergia[i];
						i<-i+1;
						
						Limpiar Pantalla;
						Escribir "Registro exitoso. ";
						registro=registro+1;				
				FinPara
			2:
			    Limpiar Pantalla;
				Escribir "Escriba el numero de cedula: ";
				Leer busqueda;
				para j=0 hasta limite -1 con paso 1 hacer
					si cedula[j]=busqueda Entonces
						escribir "paciente encontrado";
						escribir j+1, " cedula: ", cedula[j], "", " nombre: ", nombre[j], " ultima visita: ", fecha[j], " Seguridad social: ", privado[j], " alergias: ", alergia[j];
						j<-limite;
					FinSi
					
				FinPara
				
				
			3:
				Limpiar Pantalla;
				Escribir "Escriba el numero de cedula: ";
				Leer busqueda;
				para k=0  Hasta limite-1 con paso 1 Hacer
					si cedula[k]=busqueda Entonces
						escribir "su ultima visita: ";
						escribir k+1, "cedula: ", "", cedula[k], "", "nombre: ", nombre[k], "", "ultima visita: ", fecha[k];
						
					FinSi
					
				FinPara
				
				
				
			4:
				limpiar pantalla;
				
			5:
				limpiar pantalla;
				
				
				
			6:
				limpiar pantalla;
				escribir "Lista de todos pacientes: ";
				i=0;
				
				para i=0 hasta limite-1 con paso 1 hacer 
					si cedula[i]<>"0" Entonces
						Escribir  "ID. ",  I+1, " cedula: ", cedula[i], "", " nombre: ", nombre[i], " ultima visita: ", fecha[i], " Seguridad social: ", privado[i], " alergias: ", alergia[i];
					FinSi
				FinPara
		FinSegun
		Escribir "";
		escribir "Desea continuar? ";
		Escribir "1.SI ";
		Escribir "2.NO ";
		Leer entrada;
		si entrada=1 entonces
			bandera<-verdadero;
			limpiar pantalla;
		sino 
			bandera<-falso;
			Limpiar Pantalla;
			Escribir "Programa finalizado. ";
		finsi
	Hasta Que  bandera=Falso;
FinProceso
