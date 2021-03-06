%Programa para generar una funcion que es la suma de dos funciones mas
%ruido aleatorio.
%Se grafica la transformada de fourier, solo para conocer lo que pasa en
%esa grafica, que sera en realidad el espacio complejo.

clear
t = 0:0.001:0.6;
x = sin(2*pi*50*t)+sin(2*pi*120*t);
y = x + 2*randn(size(t));
figure
plot(1000*t(1:50),y(1:50))
title('Se�al alterada con ruido aleatorio promedio en cero')
xlabel('tiempo (milisegundos)')
ylabel('Amplitud')
Y = fft(y,512);   %el numero es opcional y es mejor hacerlo con 2^n datos
Pyy = Y.* conj(Y) / 512;  %no se bien porque el numero total en esta linea
f = 1000*(0:246)/512; %Frecuencia=frecuencia de muestreo*(0:L/2)/L
figure
plot(f,Pyy(1:247))
title('Contenido de frecuencias de Y')
xlabel('frequencia (Hz)')
%figure
%plot(Y)
%title('Grafica de la FFT en el espacio complejo')
sound(y)
pause(2)
sound(x)