% Programa para grabar sonidos

clear
fs=44100;
a2=analoginput('winsound');
canal=addchannel(a2,1);
set(a2,'Samplerate',fs);
set(a2,'triggertype','manual');
tazareal=get(a2,'Samplerate');
duracion=2;
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

pause(2)
sound(datos,fs)  %Esto es solamente una adicion mia al programa para sonar lo que se grabo.