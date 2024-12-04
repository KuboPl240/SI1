
f1=10;
f2=30;
f3=40;
T = 0.2;
fz = 10000; % Hz
t = 0:1/fz:T-1/fz; 
x = 5*cos(2*pi*f1*t) + 2*cos(2*pi*f2*t)+ 2*cos(2*pi*f3*t);

fz1 = 200; % Hz
t1 = 0:1/fz1:T-1/fz1; 
x1 = 5*cos(2*pi*f1*t1) + 2*cos(2*pi*f2*t1)+ 2*cos(2*pi*f3*t1);

fz2 = 50; % Hz
t2 = 0:1/fz2:T-1/fz2;
x2 = 5*cos(2*pi*f1*t2) + 2*cos(2*pi*f2*t2)+ 2*cos(2*pi*f3*t2);



s1 = zeros(size(t));
for k = 1:length(x1)
  s1 = s1 + x1(k) * sinc_(pi*fz1*((t)- k*(1/fz1)));
end

s2 = zeros(size(t));
for k = 1:length(x2)
  s2 = s2 + x2(k) * sinc_(pi*fz2*(t- k*(1/fz2)));
end

figure(1)
subplot(2,2,1);
plot(t,x);
hold on
stem(t1,x1, 'Marker', '*', 'LineStyle', 'none', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r');
ylabel('x(t)');
xlabel('t [s]');
title('Fz 200 Hz')

subplot(2,2,2);
plot(t,x);
hold on
plot(t,s1);
ylabel('s1(t)');
xlabel('t [s]');
legend('x(t)','s1(t)')
title('Fz 200 Hz')

subplot(2,2,3);
plot(t,x);
hold on
stem(t2,x2, 'Marker', '*', 'LineStyle', 'none', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r');
ylabel('x(t)');
xlabel('t [s]');
title('Fz 50 Hz')

subplot(2,2,4);
plot(t,x);
hold on
plot(t,s2);
ylabel('s2(t)');
xlabel('t [s]');
legend('x(t)','s2(t)')
title('Fz 50 Hz')

fz1 = 200; % Hz
t1 = 0:1/fz1:T-1/fz1; 
xd = round(5*cos(2*pi*f1*t1) + 2*cos(2*pi*f2*t1)+ 2*cos(2*pi*f3*t1),1);
xc = round(5*cos(2*pi*f1*t1) + 2*cos(2*pi*f2*t1)+ 2*cos(2*pi*f3*t1));
xu = floor(5*cos(2*pi*f1*t1) + 2*cos(2*pi*f2*t1)+ 2*cos(2*pi*f3*t1));

sd = zeros(size(t));
for k = 1:length(xd)
  sd = sd + xd(k) * sinc_(pi*fz1*(t- k*(1/fz1)));
end

sc = zeros(size(t));
for k = 1:length(xc)
  sc = sc + xc(k) * sinc_(pi*fz1*(t- k*(1/fz1)));
end

fz = 10000; % Hz
ts = -0.01:1/fz:T-1/fz - 0.01; 
su = zeros(size(ts));
for k = 1:length(xu)
  su = su + xu(k) * sinc_(pi*fz1*(ts- k*(1/fz1)));
end


figure(2)
subplot(3,2,1);
plot(t,x);
hold on 
stem(t1,xd, 'Marker', '*', 'LineStyle', 'none', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r');
ylabel('x(t) a xd(n)');
xlabel('t [s]');
legend('x(t)','xd(n)')

subplot(3,2,3);
plot(t,x);
hold on 
stem(t1,xc, 'Marker', '*', 'LineStyle', 'none', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r');
ylabel('x(t) a xc(n)');
xlabel('t [s]');
legend('x(t)','xc(n)')

subplot(3,2,5);
plot(t,x);
hold on 
stem(t1,xu, 'Marker', '*', 'LineStyle', 'none', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r');
ylabel('x(t) a xu(n)');
legend('x(t)','xu(n)')
xlabel('t [s]');

subplot(3,2,2);
plot(t,x,'red');
hold on 
plot(t,sd,'blue')
ylabel('x(t) a sd(t)');
xlabel('t [s]');
legend('x(t)','sd(t)')

subplot(3,2,4);
plot(t,x,'red');
hold on 
plot(t,sc,'blue')
ylabel('x(t) a sc(t)');
xlabel('t [s]');
legend('x(t)','sc(t)')


subplot(3,2,6);
plot(t1,x,'red');
hold on 
plot(t1,su,'blue')
ylabel('x(t) a su(t)');
xlabel('t [s]');
legend('x(t)','su(t)')

function y = sinc_(x)
    y = zeros(size(x));
    y(x ~= 0) = sin(x(x ~= 0)) ./ x(x ~= 0);
    y(x == 0) = 1; 
end