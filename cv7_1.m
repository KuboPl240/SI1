t = linspace(0,10,1000);

s1 = 3*(heaviside(t-2)-heaviside(t-8));
s2 = 2*(heaviside(t)-heaviside(t-4));
s3 = sin(t).*(heaviside(t)-heaviside(t-pi/2));
s4 = exp(-t).*heaviside(t);

[R1,tau1]=xcorr(s1);

[R2,tau2]=xcorr(s2);

[R3,tau3]=xcorr(s3);

[R4,tau4]=xcorr(s4);

subplot(2,2,1);
plot(tau1/100,R1/100);
xlabel('R1(tau)');
%title('s1(t) a s2(t)')
grid on
ylim([-1 70]);

subplot(2,2,2);
plot(tau2/100,R2/100);
ylim([-1 20]);
xlabel('R2(tau)');
grid on


subplot(2,2,3);
plot(tau3/100,R3/100);
axis([-4 4 0 1])
xlabel('R3(tau)');
%title('s3(t) a s4(t)')
grid on

subplot(2,2,4);
plot(tau4/100,R4/100);
xlabel(['R4(tau)']);
grid on
axis([-4 4 0 1])

