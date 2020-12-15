%Programa para la conversion de un archivo de formato wav a formato ascii,
%despues se carga el archivo a matlab y finalmente se reproduce dicho
%archivo

clear
[y,fs]=wavread('prueba',22050);
save prueba y -ascii
load prueba.dat;
%sound(prueba,22050)  % el numero es la frecuencia de muestreo

%Lo que sigue son adiciones al programa para manipular los datos de forma
%eficiente

L=length(prueba);
p=prueba(1:2:L-1);

sound(p,22050)