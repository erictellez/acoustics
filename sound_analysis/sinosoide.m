% Programa para la suma infinita dada por la tranformacion de Fourier  

clear
  
    t=0:0.0001:1;
    w=100;
    y=zeros(size(t));
    a=1;
    i=sqrt(-1);
    for k=1:10
        y=(1/(4*k^2-1)^2)*exp(i*(2*k-1)*w*t*k)+y;  
    end
    yf=(-2*a/pi)*y;
    figure
    plot(t,yf)
    sound(yf,10000)
    