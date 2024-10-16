t = linspace(0,30,1000);
x =square((2*pi)/7*(t+3),4/7*100)-1;
x =x +1.5*square((2*pi)/7*(t),1/7*100)+1.5;

plot(t,x);
ylabel('U[V]');
xlabel('s(t)');
grid on