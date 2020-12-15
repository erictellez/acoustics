%Programa para generar una funcion que es la suma de dos funciones mas
%ruido aleatorio.
%Se grafica la transformada de fourier, solo para conocer lo que pasa en
%esa grafica, que sera en realidad el espacio complejo.

t = 0:0.001:0.6;
x = sin(2*pi*50*t)+sin(2*pi*120*t);
y = x + 8*randn(size(t));
figure
plot(1000*t(1:50),y(1:50))
title('Señal alterada con ruido aleatorio promedio en cero')
xlabel('tiempo (milisegundos)')
ylabel('Amplitud')
Y = fft(y,512);
Pyy = Y.* conj(Y) / 512;
f = 1000*(0:256)/512;
figure
plot(f,Pyy(1:257))
title('Contenido de frecuencias de Y')
xlabel('frequencia (Hz)')
figure
plot(Y)
figure
plot(x)
figure
plot(y)
sound(y)
pause(2)
sound(x)