C=2;
f1=10;
f2=40;
f3=50;
t = 0:0.001:1;

x1 = C*cos(2*pi*f1*t);
x2 = C*cos(2*pi*f1*t) + C*cos(2*pi*f2*t);
x = C*cos(2*pi*f1*t) + C*cos(2*pi*f2*t)+ C*cos(2*pi*f3*t);

y1_1 = 2*x1.^2;
y2_1 = x1.^3;
y3_1 = x1.^2 + x1.^3;

y1_2 = 2*x2.^2;
y2_2 = x2.^3;
y3_2 = x2.^2 + x2.^3;

y1 = 2*x.^2;
y2 = x.^3;
y3 = x.^2 + x.^3;

figure(1)
subplot(2,2,1);
plot(t,x);
title('Signál x(t)');
xlabel('t [s]');
ylabel('x(t)');

subplot(2,2,3);
plot(t,y3);
title('Signál y3(t)');
xlabel('t [s]');
ylabel('y3(t)');

f = (0:N-1)*(500/N);
N = length(x)/2;

spekt_x = abs(fft(x))/N;
spekt_x1 = abs(fft(x1))/N;
spekt_x2 = abs(fft(x2))/N;

spekt_y1 = abs(fft(y1))/N;
spekt_y2 = abs(fft(y2))/N;
spekt_y3 = abs(fft(y3))/N;

spekt_y1_1 = abs(fft(y1_1))/N;
spekt_y2_1 = abs(fft(y2_1))/N;
spekt_y3_1 = abs(fft(y3_1))/N;

spekt_y1_2 = abs(fft(y1_2))/N;
spekt_y2_2 = abs(fft(y2_2))/N;
spekt_y3_2 = abs(fft(y3_2))/N;

subplot(2,2,2);
stem(f(1:floor(N/2)), spekt_x(1:floor(N/2)));
title('Spektrum signálu x(t)');
xlabel('f [Hz]');
ylabel('amplituda x');

subplot(2,2,4);
stem(f(1:floor(N/2)), spekt_y3(1:floor(N/2)));
title('Spektrum signálu y3(t)');
xlabel('f [Hz]');
ylabel('amplituda y3');

figure(2)
subplot(3,3,1);
stem(f(1:floor(N/2)), spekt_y1_1(1:floor(N/2)));
ylabel('y = 2*x^2');
subplot(3,3,2);
stem(f(1:floor(N/2)), spekt_y2_1(1:floor(N/2)));
title('1 zložka');
subplot(3,3,3);
stem(f(1:floor(N/2)), spekt_y3_1(1:floor(N/2)));

subplot(3,3,4);
stem(f(1:floor(N/2)), spekt_y1_2(1:floor(N/2)));
ylabel('y = x^3');
subplot(3,3,5);
stem(f(1:floor(N/2)), spekt_y2_2(1:floor(N/2)));
title('2 zložky');
subplot(3,3,6);
stem(f(1:floor(N/2)), spekt_y3_2(1:floor(N/2)));

subplot(3,3,7);
stem(f(1:floor(N/2)), spekt_y1(1:floor(N/2)));
ylabel('y= x^2 + x^3');
subplot(3,3,8);
stem(f(1:floor(N/2)), spekt_y2(1:floor(N/2)));
title('3 zložky');
subplot(3,3,9);
stem(f(1:floor(N/2)), spekt_y3(1:floor(N/2)));
