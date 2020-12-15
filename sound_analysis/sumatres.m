% Suma de tres ffunciones

clear

    t=0:0.0001:1;
    w1=100;
    w2=440;
    w3=3000;
    k=10;
    h=-40;
    %v=340;
    %lambda=v./w
    y1=k*sin(2*pi*t*w1);
    y2=sin(2*pi*t*w2);
    y3=cos(2*pi*t*w3);
    a=y1+y2+y3;
    %r=exp(a);
    sound(a, 10000)
