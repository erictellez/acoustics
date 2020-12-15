% Modo de almacenamiento masivo
% Este programa es para cuando el numero de datos es muy grande y se corre
% el riesgo de saturar la memoria.

a3=analoginput('winsound');
set(a3,'LogFileName', 'DAQmasivo.daq');
set(a3,'LogToDiskMode',overwrite');
set(a3,'LoggingMode','Disk&Memory');

start(a3)
while strcmp(a3.running,'on');
end

[dato,tiempo]=daqread('DAQmasivo.daq');
