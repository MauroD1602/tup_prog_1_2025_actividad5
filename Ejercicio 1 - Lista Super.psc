Proceso ListaSuper
	Definir i,contProd,aceptados,rechazados,contNutri Como Entero;
	Definir valNutri,porc Como Real;
	Definir malo Como Logico;
	
	rechazados = 0;
	
	Escribir 'Ingrese la cant de prod de la compra';
	Leer contProd;
	
	Para i = 1 Hasta contProd Hacer
		contNutri = 1;
		malo = Falso;
		Escribir 'Seleccionanado producto : ',i , ' de la lista de compras';
		Repetir
			
			Escribir "Valores nutricionales";
			Escribir "1- Energ�a: m�nimo 100kCal, m�ximo 200kCal"; 
			Escribir "2- Carbohidratos: m�nimo 0%, m�ximo 15%"; 
			Escribir "3- Grasas: m�nimo 1%, m�ximo 13%"; 
			Escribir "4- Fibra: m�nimo 0%, m�ximo 15%"; 
			Escribir "5- Sodio: m�nimo 0%, m�ximo 2%";
			Escribir "";
			Escribir 'Ingrese el valor nutri de la tabla del doc, l�nea:',contNutri;
			Leer valNutri;
			Segun contNutri  Hacer
				1:
					Si valNutri<100 O valNutri>200 Entonces
						malo = Verdadero;
					FinSi
				2:
					porc = valNutri/100*100;
					Si porc>15 Entonces
						malo = Verdadero;
					FinSi
				3:
					porc = valNutri/100*100;
					Si porc<1 O porc>13 Entonces
						malo = Verdadero;
					FinSi
				4:
					porc = valNutri/100*100;
					Si porc>15 Entonces
						malo = Verdadero;
					FinSi
				De Otro Modo:
					porc = valNutri/100*100;
					Si porc>2 Entonces
						malo = Verdadero;
					FinSi
			FinSegun
			contNutri = contNutri+1;
			
		Hasta Que malo O contNutri>5
		Si malo Entonces
			rechazados = rechazados+1;
		FinSi
	FinPara
	
	aceptados = contProd - rechazados;
	
	Escribir 'Cantidad de productos aceptados: ', aceptados;
	Escribir 'Cantidad de productos rechazados: ', rechazados;

FinProceso