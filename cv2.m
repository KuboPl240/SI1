t = linspace(0, 0.3, 100);
s= 2*cos(20*pi*t + 0.2*pi) + 4*cos(40*pi*t - 0.4*pi) + 6*cos(60*pi*t);
s1=2*cos(20*pi*t + 0.2*pi) + 6*cos(60*pi*t);
s2=4*cos(40*pi*t - 0.4*pi) + 6*cos(60*pi*t);
subplot(4,1,1)
plot(t,s,"red")
grid on
xlabel('Cas [s]')
ylabel('Hodnota [-]')
title('s(t)');

subplot(4,1,2)
plot(t,s1,"red")
grid on
xlabel('Cas [s]')
ylabel('Hodnota [-]')
title('s1(t)');

subplot(4,1,3)
plot(t,s2,"red")
grid on
xlabel('Cas [s]')
ylabel('Hodnota [-]')
title('s2(t)');

t = linspace(0, 3, 100);
s3=2*cos(20*pi*t + 0.2*pi) + 4*cos(40*pi*t - 0.4*pi) + 6*cos(61*pi*t);
subplot(4,1,4)
plot(t,s3,"red")
grid on
xlabel('Cas [s]')
ylabel('Hodnota [-]')
title('s3(t)');