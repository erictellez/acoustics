% Principio de Incertidumbre
% Programa para reproducir una señal y al mismo tiempo grabarla en la
% computadora

% El objetivo de este programa es demostrar el principio de incertidumbre
% de Heisenberg con una pequeña alteracion, que dice que el producto del
% cambio en frecuencia con el producto del cambio en la duracion del mismo
% pulso no puede ser menor que uno.

% Para realizar este programa se haran n partes: 
% La primero que se hara sera generar una señal que ira cambiando en
% frecuencia y en duracion y grabarla al mismo tiempo, no es necesario en
% realidad generar el sonido como tal, ya que la computadora podria hacerlo
% y grabar los datos al mismo tiempo, pero esas no son condiciones reales.

% Una vez que se tienen los datos, se usara la transformada de Fourier para
% analizar la señal que se ha 

%  Primero para reproducir el pulso:

    clear
    
    n=8;                            % la duracion del pulso.
    fs=8192;                        % La frecuencia de muestreo es muy importante 
                                    % en los experiementos de acústica, 
                                    % ya que es la forma cuantizada de como se adquieren los datos.
    
    a1=analogoutput('winsound');    %Define tarea
    canal=addchannel(a1,1);         %un canal
    set(a1,'SampleRate',fs);        %tasa de muestreo con la que voy a trabajar
    set(a1,'TriggerType','Manual'); %define el disparo de la reproduccion
    set(a1,'RepeatOutput',n-1);
    
    % Aqui se genera la señal con ciertas caracteristicas
    f1=440;
    t=0:1/fs:1;
    y=sin(2*pi*t*f1);
   

    
% Para grabar que de hecho tiene que ser al mismo tiempo
a2=analoginput('winsound');
canal=addchannel(a2,1);
set(a2,'Samplerate',fs);
set(a2,'triggertype','manual');
tazareal=get(a2,'Samplerate');
duracion=n;   % se hace la grabacion del pulso de la misma longitud que la duracion de la reproduccion
set(a2,'samplespertrigger',duracion*fs);

%aqui es para adquirir los datos que se estan generando
    putdata(a1,y');
    start([a1 a2]);
    disp('Para comenzar el experimento presione una tecla')
    pause;
    trigger([a1 a2]);
    while strcmp(a1.running,'on'); 
    while strcmp(a2.running,'on');
    end
    end

    [datos,t]=getdata(a2);
    plot(t,datos)
    delete(a2)
    delete(a1)
    
% Para seleccionar la duracion del pulswo manualmente se puede ultilizar el
% raton para seleccionar el intervalo desde la grafica.

%[x,y]=ginput(2)
    
%Lo que tambien lo podria hacer desde el programa., pero aun no se como.
    
% Ahora se hace la parte del programa correspondiente al analisis de
% Fourier

Y = fft(datos,8192);   %el numero es opcional y es mejor hacerlo con 2^n datos
Pyy = Y.* conj(Y) / 8192;  %no se bien porque el numero total en esta linea
f = fs*(1:4096)/8192; %Frecuencia=frecuencia de muestreo*(0:L/2)/L, esto es debido al teorema de muestreo
figure
plot(f,Pyy(1:4096))
title('Contenido de frecuencias de Y')
xlabel('frequencia (Hz)')
%axis([10 200 0 0.05]);

% Para el analisis del FWHM una vez obtenida esta señal del espectro de
% Fourier voy a hacer

[c,i]=max(Pyy)
%find((c/2-0.00000005)>=Pyy(1:4096) & Pyy(1:4096)<=(c/2+0.00000005))

% este par de instrucciones no funcionaron ya que, no hay tantos puntos en
% la curva, por lo que se necesitará interpolar el pico tambien con una transformada de fourier
% o en todo caso todos los datos, lo cual sería un desperdicio de recursos.

[x,y]=ginput(2)