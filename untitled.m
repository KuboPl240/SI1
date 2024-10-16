
f= 20:20000;
p= 3.64*(f/1000).^(-0.8) - 6.5*exp(-0.6*(f/1000 - 3.3).^2)+10.^(-3)*(f/1000).^4;
semilogx(f,p,"red")
grid on
title('Audiogram')
xlabel('Kmitočet [Hz]') 
ylabel('Akusticky tlak [dB]')
ylim([-20 120])