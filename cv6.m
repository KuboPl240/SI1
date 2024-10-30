t=0:0.01:10;
signal = 0*t;
signal = signal +  1.5*(t-1).*(heaviside(t-1)-heaviside(t-3));

signal = signal + -3*(t-3).*(heaviside(t-3)-heaviside(t-4));

signal = signal + -2*(heaviside(t-5)-heaviside(t-6));

signal = signal + 3*sin(pi * (t-5) / 4) .*(heaviside(t-7)-heaviside(t-9));


figure(1);
plot(t,signal);
axis([-1 10 -5 5])

