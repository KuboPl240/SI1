
C = 4;
f1 = 0.3;
f2 = 0.9;
f3 = 1.2;
A1 = 3;
A2 = 0.5;

t = 0:0.01:10; 

x = C * cos(2 * pi * f1 * t) + C * cos(2 * pi * f2 * t) + C * cos(2 * pi * f3 * t);

xv = A1 * x + A2 * x.^2;

z = C * cos(2 * pi * f1 * t) + C * cos(2 * pi * f2 * t + 0.5*pi) + C * cos(2 * pi * f3 * t);

zv = A1 * z + A2 * z.^2;

figure;
subplot(4,2,1);
plot(t, x);
title('Signál x(t)');
xlabel('Čas (s)');
ylabel('Amplituda');
grid on;

subplot(4,2,3);
plot(t, xv);
title('Signál xv(t)');
xlabel('Čas (s)');
ylabel('Amplituda');
grid on;

subplot(4,2,5);
plot(t, z);
title('Signál z(t)');
xlabel('Čas (s)');
ylabel('Amplituda');
grid on;

subplot(4,2,7);
plot(t, zv);
title('Signál z(t)');
xlabel('Čas (s)');
ylabel('Amplituda');
grid on;

t = 0:0.1:10; 
N = length(t);
x = C * cos(2 * pi * f1 * t) + C * cos(2 * pi * f2 * t) + C * cos(2 * pi * f3 * t);

xv = A1 * x + A2 * x.^2;

z = C * cos(2 * pi * f1 * t) + C * cos(2 * pi * f2 * t + 0.5*pi) + C * cos(2 * pi * f3 * t);

zv = A1 * z + A2 * z.^2;

x_spektr = 2*abs(fft(x,N))/N;
xv_spektr = 2*abs(fft(xv,N))/N;
z_spektr = 2*abs(fft(z,N))/(N);
zv_spektr = 2*abs(fft(zv,N))/N;


k = 0:N-1;
n = floor(N/3);
subplot(4,2,2);
stem(k, x_spektr);
title('Spektrum x(t)');
xlabel('zlozka');
ylabel('Amplituda');
xlim([0 n]);
grid on;

subplot(4,2,4);
stem(k, xv_spektr);
title('Spektrum xv(t)');
xlabel('zlozka');
ylabel('Amplituda');
xlim([0 n]);
grid on;

subplot(4,2,6);
stem(k, z_spektr);
title('Spektrum z(t)');
xlabel('zlozka');
ylabel('Amplituda');
xlim([0 n]);
grid on;

subplot(4,2,8);
stem(k, zv_spektr);
title('Spektrum zv(t)');
xlabel('zlozka');
ylabel('Amplituda');
xlim([0 n]);
grid on;

