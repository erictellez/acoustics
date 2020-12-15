% Programa para leer archivos que se han grabado con windows y con
% extension .wav

function leerarchivowav(nomarch,fssal)
[y,fs]=wavread(nomarch);
L=length(y);
t=0:1/fs:(L-1)/fs;
plot(t,y)
sound(y,fssal)