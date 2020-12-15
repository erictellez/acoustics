% Programa para la suma de diferentes funciones que es la suma infinita
% de senos

clear
    t=0:0.0001:1;
    w=440;
    y=zeros(size(t));
for k=1:10
    for i=1:k
        y=(((-1)^(i+1))/(2*i-1))*cos((2*i-1)*2*pi*w*t)+y;  
    end
    yf=4/pi*y;
    %figure
    plot(t,yf)
    sound(yf,10000)
    pause(1)
end  