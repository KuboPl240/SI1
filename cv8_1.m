t = linspace(-5,10,1000);

s1 = 3*(heaviside(t-2)-heaviside(t-8));
s2 = 2*(heaviside(t)-heaviside(t-4));
s3 = sin(t).*(heaviside(t)-heaviside(t-pi/2));
s4 = exp(-t).*heaviside(t);

R12=conv(s1,s2,'same');

R21=conv(s2,s1,'same');

R34=conv(s3,s4,'same');

R43=conv(s4,s3,'same');

subplot(3,2,1);
plot(t,R12/100);
xlabel('R12(t)');
title('s1(t) a s2(t)')
grid on
ylim([-1 30]);
xlim([-3,10])


subplot(3,2,3);
plot(t,R21/100);
ylim([-1 30]);
xlabel('R21(t)');
grid on
xlim([-3,10])

subplot(3,2,5);
plot(t,R21/100,"--");
hold on
plot(t,R12/100,"-.");
ylim([-1 30]);
xlabel('R12(t) a R21(t)');
grid on
xlim([-3,10])

subplot(3,2,2);
plot(t,R34/100);
xlabel('R34(t)');
ylim([-1 1]);
title('s3(t) a s4(t)')
grid on

subplot(3,2,4);
plot(t,R43/100);
ylim([-1 1]);
xlabel(['R43(t)']);
grid on



subplot(3,2,6);
plot(t,R43/100,"--");
hold on
plot(t,R34/100,"-.");
ylim([-1 1]);
xlabel('R34(t) a R43(t)');
grid on