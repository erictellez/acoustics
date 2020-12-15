% Disparo de dos objetos al mismo tiempo


a1=analoginput('winsound');
canal=addchannel(a1,1);
set(a1, 'SampleRate', fs);
set(a1, 'TriggerType', 'Immediate');
set(a1, 'SamplesPerTrigger'; fs*duracion);

a2=analogoutput('Winsound');
addchannel(a2, 1:2);
set(a2, 'SampleRate', fs);
set(a2, 'TriggerType', 'Immediate');
%generar vector de salida en este espacio

y=sin(2*pi*f*t);
putdata(a2, y);