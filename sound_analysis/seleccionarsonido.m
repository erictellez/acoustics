%Programa para cortar un archivo de sonido graficamente con el raton

y,fs]=wavread('prueba',22050);
save prueba y -ascii
load prueba;
sound(prueba,22050)  % el numero es la frecuencia de muestreo
plot(prueba)
[x,y]=ginput(2);
plot(x,y)