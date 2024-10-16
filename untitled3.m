t = linspace(0,0.5,1000);
s= 2*cos(20*pi*t + 0.2*pi) + 4*cos(40*pi*t - 0.4*pi) + 6*cos(60*pi*t);
sl = exp(j*0.2*pi)*exp(j*60*t) + exp(-j*0.2*pi)*exp(-j*60*t) + 2*exp(-j*0.4*pi)*exp(j*120*t) + 2*exp(+j*0.4*pi)*exp(-j*120*t) + 3*exp(j*180*t) + 3*exp(-j*180*t);
figure(1)
subplot(3,1,1)
plot(t,s,"red")
grid on
xlabel('Cas [s]')
ylabel('Hodnota [-]')
title('s(t)');

subplot(3,1,2)
plot(t,sl,"blue");
grid on
xlabel('Cas [s]')
ylabel('Hodnota [-]')
title('sl(t)')

subplot(3,1,3)
hold all
plot(t,s,"red")
plot(t,sl,"blue")
grid on
xlabel('Cas [s]')
ylabel('Hodnota [-]')
title('s(t) a s(t)')