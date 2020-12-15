
% diversas formas de colectar datos

datos=getdata(a2);  %con el eje de tiempo
[datos,t]=getdata(a2);  % sin el eje de tiempo

totaldatos=fs*duracion*(a2.TriggerRepeat+1);
y=getdata(a2,totaldatos);