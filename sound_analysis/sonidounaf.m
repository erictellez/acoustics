% Programa para reproducir un solo sonido

Fs=10000;
t=0:1/Fs:0.01;
w=100;
v=340;
lambda=v/w
y=sin(2*pi*w*t);
z=y.*cos(2*pi*w*t);
a=z.*y;
plot(t,y)
%axes[(0 2 0 1)];
sound(y)