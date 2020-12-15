% Programa que reproduce sonidos de diferentes frecuencias

clear
for i=1:10;
    %Fs=10000;
    t=0:0.0001:.1;
    w=440*exp(i);
    %v=340;
    %lambda=v./w
    y=sin(2*pi*t*w);
    z=y.*cos(2*pi*t*w);
    a=z.*y.*y.*y;
    %figure
    plot(t,y)
    hold
    %axes[(0 2 0 1)];
    sound(y, 10000);
    pause(0.5);
end