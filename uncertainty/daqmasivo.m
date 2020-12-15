% Modo de almacenamiento masivo
% Este programa es para cuando el numero de datos es muy grande y se corre
% el riesgo de saturar la memoria.

% Lo que hace el programa es mandar los datos a un archivo para no saturar
% la memoria.  El archivo tiene la extension .daq

a3=analoginput('winsound');
set(a3,'LogFileName', 'DAQmasivo.daq');  % aqui esta el nombre del archivo
set(a3,'LogToDiskMode',overwrite');
set(a3,'LoggingMode','Disk&Memory');

start(a3)
while strcmp(a3.running,'on');
end

[dato,tiempo]=daqread('DAQmasivo.daq');
