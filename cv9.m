x = linspace(0,8,100);
y = 5 + 1*x+2*x.^2;

figure(1)
plot(x,y,'red')
ylim([0 140]);
xlim([0 8]);
yticks(0:(10):140);
xlabel('x');
ylabel('y');
grid on

t=linspace(-1,8,1000);
signalA = 2*(heaviside(t-1)-heaviside(t-3)) + (heaviside(t-3)-heaviside(t-4)) + 0.5*(heaviside(t-4)-heaviside(t-5));

signalB = 0.5*t.*(heaviside(t)-heaviside(t-2)) + 2*(t-2).*(heaviside(t-2)-heaviside(t-3)) + (heaviside(t-2)-heaviside(t-3)) -(3/2)*(t-2).*(heaviside(t-3)-heaviside(t-5)) + (3/2 + 3)*(heaviside(t-3)-heaviside(t-5));

%signalC = -1/4*t.*heaviside(t)+heaviside(t) + (1./(t-1)).*sin(pi*t*6).*heaviside(t);

signalC = 1 * exp(-t).* heaviside(t) + (0.8*1./((t*6)+1)).*sin(2*pi*t*3).*heaviside(t); 

yA = 5 + 1*signalA+2*signalA.^2;

yB = 5 + 1*signalB+2*signalB.^2;

yC = 5 + 1*signalC+2*signalC.^2;

figure(2)
subplot(3,2,1)
plot(t,signalA,'blue')
title('Signal A')
ylabel('sA(t)');
xlabel('t');
grid on
ylim([0 4]);
xlim([-1 8]);

subplot(3,2,3)
plot(t,signalB,'blue')
title('Signal B')
ylabel('sB(t)');
xlabel('t');
grid on
ylim([-1 4]);
xlim([-1 8]);

subplot(3,2,5)
plot(t,signalC,'blue')
title('Signal C')
ylabel('sC(t)');
xlabel('t');
grid on
ylim([0 2]);
xlim([-1 4]);

subplot(3,2,2)
plot(t,yA,'red')
title('Signal A')
ylabel('y');
xlabel('t');
grid on

subplot(3,2,4)
plot(t,yB,'red')
title('Signal B')
ylabel('y');
xlabel('t');
grid on

subplot(3,2,6)
plot(t,yC,'red')
title('Signal C')
ylabel('y');
xlabel('t');
xlim([-1 4]);
grid on