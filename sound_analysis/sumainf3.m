% Programa para la suma infinita de diversas funciones

clear
  
    t=0:0.0001:1;
    w=100;
    y=zeros(size(t));
    k=1;
    l=1;
%for k=1:5
    for i=1:10
        y=(((-1)^(i+1))/(2*i-1)^2)*sin((2*i-1)*(pi/l)*w*t)+y;  
    end
    yf=(8*k/pi)*y;
    figure
    plot(t,yf)
    sound(yf,10000)
    