% Funcion de Fourier, quiero tratar de hacer el programa de la suma
% infinita pero ya usando la funcion de fourier que me da Matlab

clear
  
    t=0:0.0001:1;
    w=100;
    y=zeros(size(t));
for k=1:5
    for i=1:10
        y=(((-1)^(i+1))/(2*i-1))*cos((2*i-1)*w*t)+y;  
    end
    yf=4/pi*y;
    figure
    x=fft(yf);
    plot(x)
    hold
    plot(x,y)
    plot(t,yf)
    
    sound(yf,10000)
end    