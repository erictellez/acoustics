% Programa para reproducir sonidos
% Se necesitan tres parametros:
% 1. La duración del pulso en segundos
% 2. La frecuencia de muestreo, se recomienda 44100, pero se puede poner
%    cualquier numero
% 3. La frecuencia del tono fundamental

function funcionreproducir(n,fs,f)
%n=3;
%fs=44100;
a1=analogoutput('winsound');    %Define tarea
canal=addchannel(a1,1);         %un canal
set(a1,'SampleRate',fs);        %tasa de muestreo con la que voy a trabajar
set(a1,'TriggerType','Manual'); %define el disparo de la reproduccion
set(a1,'RepeatOutput',n-1);

% Aqui se genera la señal con ciertas caracteristicas
%f=440;
t=0:1/fs:1;
y=sin(2*pi*t*f);
plot(t,y);

%aqui es para adquirir los datos que se estan generando
putdata(a1,y');
start(a1);
clc
disp('Para continuar oprima cualquier tecla');
pause
trigger(a1);
while strcmp(a1.running,'on');
end
delete(a1);