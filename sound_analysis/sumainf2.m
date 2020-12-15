% Programa para la suma infinita de una funcion 

clear
  
    t=0:0.0001:5;
    w=440;
    y=zeros(size(t));
%for k=1:5
    for i=1:10
        y=(1/i)*sin(i*w*t)+y;  
    end
    yf=1/2-(1/pi)*y;
    %figure
    plot(t,yf)
    sound(yf,10000)
    