% Cambio de la fase de las ondas

clear

    t=0:0.0001:1;
    w1=100;
    w2=120;
    k=10;
    %v=340;
    %lambda=v./w
    y1=k*sin(2*pi*t*w1);
    y2=sin(35*pi*t*w2+k);
    y3=y1+y2;
    %a=y1.*y2.*y3.*exp(y3);
    %r=exp(a);
    hold
    plot(t,y1,t,y2,t,y3)
    sound(y1,10000)
    sound(y2,10000)
    sound(y3,10000)