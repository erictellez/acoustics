%Programa para la conversion de un archivo de formato wav a formato ascii,
%despues se carga el archivo a matlab y finalmente se reproduce dicho
%archivo

[y,fs]=wavread('prueba',22050)
save prueba y -ascii
load prueba;
sound(prueba,22050)  % el numero es la frecuencia de muestreo