% Este es un programa para hacer la funcion del analisis de una grabacion

function funcionanalizargrabacion(
% Para grabar
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
datos=getdata(a2);  %Este es el vector con en el que se guarda la señal
t=0:1/fs:duracion-1/fs;
plot(t,datos)
delete(a2)
pause(2)
sound(datos,fs) %Mi adicion al programa anterior

% Para analizar la señal.  Esto ya se explica en el programa fourier ruido
t = 0:1/fs:3;
title('Señal grabada por el usuario')
xlabel('tiempo (milisegundos)')
ylabel('Amplitud')
Y = fft(datos,1024);   %el numero es opcional y es mejor hacerlo con 2^n datos
Pyy = Y.* conj(Y) / 1024;  %no se bien porque el numero total en esta linea
f = fs*(0:512)/1024; %Frecuencia=frecuencia de muestreo*(0:L/2)/L
figure
plot(f(1:513),Pyy(1:513))
%axis([0 2000 0 0.1]);
title('Contenido de frecuencias de Y')
xlabel('frequencia (Hz)')
%[x,y]=ginput(1)