% Vectores en Matlab

% t=0:0.1:3;  Es un vector que va desde cero hasta tres
             %de punto uno en punto uno
% Creamos otra matriz llamada p de las mismas dimensiones
% y operamos entre ellas.  Si sumamos las matrices, lo hara entrada a
% entrada y lo mismo sera con la resta, pero si queremos multiplicar o
% dividir, va a ocurrir un error a menos que se especifique una de dos
% cosas:  se pone un . (punto) p.*t, para multiplicar entrada a entrada
% y tambien se puede multiplicar las matrices siempre y cuando las
% dimensiones sean (a*b)*(b*c) dimensiones y en ese caso hay que transponer
% la matriz y eso se hace con un apostrofe '

% Para seleccionar el renglon n de la matriz b b(n,:) y para seleccionar la
% columna n de la matriz b se pone b(:,n)