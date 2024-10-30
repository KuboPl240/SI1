t = linspace(0,10,1000);

s1 = 3*(heaviside(t-2)-heaviside(t-8));
s2 = 2*(heaviside(t)-heaviside(t-4));
s3 = sin(t).*(heaviside(t)-heaviside(t-pi/2));
s4 = exp(-t).*heaviside(t);
figure(1);
plot(t,s3);

[R12,tau1]=xcorr(s1,s2);

[R21,tau2]=xcorr(s2,s1);

[R34,tau3]=xcorr(s3,s4);

[R43,tau4]=xcorr(s4,s3);

figure(2);
subplot(3,2,1);
plot(tau1/100,R12/100);
xlabel('R12(tau)');
title('s1(t) a s2(t)')
grid on
ylim([-1 25]);

subplot(3,2,3);
plot(tau2/100,R21/100);
ylim([-1 25]);
xlabel('R21(tau)');
grid on

subplot(3,2,5);
plot(tau1/100,R12/100,"--");
hold on
plot(tau2/100,R12/100,":");
ylim([-1 25]);
xlabel('R12(tau) a R21(tau)');
grid on

subplot(3,2,2);
plot(tau3/100,R34/100);
axis([-4 4 0 1])
xlabel('R34(tau)');
title('s3(t) a s4(t)')
grid on

subplot(3,2,4);
plot(tau4/100,R43/100);
xlabel(['R43(tau)']);
grid on
axis([-4 4 0 1])


subplot(3,2,6);
plot(tau3/100,R43/100,"--");
hold on
plot(tau3/100,R43/100,":");
axis([-4 4 0 1])
xlabel('R34(tau) a R43(tau)');
grid on
