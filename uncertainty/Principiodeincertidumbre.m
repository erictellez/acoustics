% Principio de Incertidumbre
% Programa para reproducir una señal y al mismo tiempo grabarla en la
% computadora

% El objetivo de este programa es demostrar el principio de incertidumbre
% de Heisenberg con una pequeña alteracion, que dice que el producto del
% cambio en frecuencia con el producto del cambio en la duracion del mismo
% pulso no puede ser mayor que uno.

% Para realizar este programa se haran n partes: 
% La primero que se hara sera generar una señal que ira cambiando en
% frecuencia y en duracion y grabarla al mismo tiempo, no es necesario en
% realidad generar el sonido como tal, ya que la computadora podria hacerlo
% y grabar los datos al mismo tiempo, pero esas no son condiciones reales.

% Una vez que se tienen los datos, se usara la transformada de Fourier para
% analizar la señal que se ha 

%  Primero para reproducir el pulso:

    clear
    
    n=3;                            % la duracion del pulso.
    fs=44100;
    a1=analogoutput('winsound');    %Define tarea
    canal=addchannel(a1,1);         %un canal
    set(a1,'SampleRate',fs);        %tasa de muestreo con la que voy a trabajar
    set(a1,'TriggerType','Manual'); %define el disparo de la reproduccion
    set(a1,'RepeatOutput',n-1);
    
    % Aqui se genera la señal con ciertas caracteristicas
    f=440;
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

% Para grabar que de hecho tiene que ser al mismo tiempo

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
disp('Para comenzar a grabar presione una tecla')
pause;
trigger(a2);
while strcmp(a2.running,'on');
end
datos=getdata(a2);
t=0:1/fs:duracion-1/fs;
plot(t,datos)
delete(a2)
