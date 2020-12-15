% Analizargrabacion
% Programa que grafica la tranformada de fourier en frecuencias para uan
% grabacion hecha por el usuario.
% De este programa se puede obtener la frecuencia basica de la grabacion o
% la mas predominante.

% Para grabar
clear
fs=44100;
a2=analoginput('winsound');
canal=addchannel(a2,1);
set(a2,'Samplerate',fs);  %se define la taza de muestreo
set(a2,'triggertype','manual');  %se define el disparo que es manual
tazareal=get(a2,'Samplerate'); 
duracion=3;  %Aqui esta la duracion de lo que se quiere grabar
set(a2,'samplespertrigger',duracion*fs); % 
start(a2);
clc
disp('Para continuar presione una tecla')
pause;
trigger(a2);
while strcmp(a2.running,'on');
end
datos=getdata(a2);  %Este es el vector con en el que se guarda la se�al
t=0:1/fs:duracion-1/fs;
plot(t,datos)
delete(a2)
pause(2)
sound(datos,fs) %Mi adicion al programa anterior

% Para analizar la se�al.  Esto ya se explica en el programa fourier ruido
t = 0:1/fs:5;
title('Se�al grabada por el usuario')
xlabel('tiempo (segundos)')
ylabel('Amplitud')
Y = fft(datos,1024);   %el numero es opcional y es mejor hacerlo con 2^n datos
Pyy = Y.* conj(Y) / 1024;  %no se bien porque el numero total en esta linea
f = fs*(0:512)/1024; %Frecuencia=frecuencia de muestreo*(0:L/2)/L
figure
plot(f(1:513),Pyy(1:513))
%axis([0 10000 0 0.5]);
title('Contenido de frecuencias de Y')
xlabel('frequencia (Hz)')

%c=max(Pyy)     % Es para que me de el valor m�s alto del vector
b=sort(Pyy(1:513), 'ascend')  %ordena el vector Pyy del valor m�s peque�o al m�s grande

%zoom xon

[x,y]=ginput(5)