% Resta de las dos primeras funciones

clear

    t=0:0.0001:1;
    w1=100;
    w2=440;
    k=10;
    %v=340;
    %lambda=v./w
    y1=k*sin(2*pi*t*w1);
    y2=sin(2*pi*t*w2);
    y3=y1-y2;
    sound(y3, 10000)
    plot(y3)