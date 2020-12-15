%Programa para generar una funcion con una frecuencia especifica con ruido
%aleatorio.
%Se grafica la transformada de fourier, para verificar que efectivamente se
%esta produciendo esta

clear
t = 0:0.0001:0.6;
x = sin(2*pi*400*t);
y = x + 2*randn(size(t));
figure
plot(10000*t(1:50),y(1:50))
title('Señal alterada con ruido aleatorio promedio en cero')
xlabel('tiempo (milisegundos)')
ylabel('Amplitud')
Y = fft(y,4096);   %el numero es opcional y es mejor hacerlo con 2^n datos
% Se lo aumente con respecto al otro programa porque no me da la frecuencia
% exacta para un valor de 512, entonces estoy refinando la particion
Pyy = Y.* conj(Y) / 4096;
f = 10000*(0:2048)/4096; %Frecuencia=frecuencia de muestreo*(o:L/2)/L
figure
plot(f,Pyy(1:2049))
title('Contenido de frecuencias de Y')
xlabel('frequencia (Hz)')
%figure
%plot(Y)
%title('Grafica de la FFT en el espacio complejo')
sound(y)
pause(3)
sound(x)