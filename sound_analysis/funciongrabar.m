% Programa en forma de funcion para grabar sonidos
% Para esta función se necesitan los siguientes parámetros:
% Frecuencia de muestreo, normalmente 44100
% Duracion de pulso,en segundos, duracion 

function funciongrabar(fs,duracion)
a2=analoginput('winsound');
canal=addchannel(a2,1);
set(a2,'Samplerate',fs);
set(a2,'triggertype','manual');
tazareal=get(a2,'Samplerate');
set(a2,'samplespertrigger',duracion*fs);
start(a2);
clc
disp('Para continuar presione una tecla')
pause;
trigger(a2);
while strcmp(a2.running,'on');
end
datos=getdata(a2);
t=0:1/fs:duracion-1/fs;
plot(t,datos)
delete(a2)