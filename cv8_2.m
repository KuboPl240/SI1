t = linspace(-4,10,1000);
s1 = 4*(heaviside(t)-heaviside(t-5));
s2 = 2*(heaviside(t)-heaviside(t-3));
conv_s1_s2 = conv(s1,s2,"same")/100;

figure(1)
subplot(3,1,1);
plot(t,s1);
title('s1(t)')
grid on
ylim([-1 5]);
xlim([-1 6]);

subplot(3,1,2);
plot(t,s2);
title('s2(t)')
grid on
xlim([-1 6]);
ylim([-1 5]);

subplot(3,1,3);
plot(t,conv_s1_s2);
title('s1(t) a s2(t)')
grid on
xlim([-4 6]);

omega = linspace(0,10,1000);
S1 = S_omega(4,5,2.2,omega);
S2 = S_omega(2,3,0.5,omega);
S = abs(S1.*S2);


figure(2)
subplot(3,1,1);
plot(omega,S1);
title('S1(omega)')
grid on

subplot(3,1,2);
plot(omega,S2);
title('S2(omega)')
grid on

subplot(3,1,3);
plot(omega,S);
title('S1(omega) a S2(omega)')
grid on


function S = S_omega(D,theta, tr, omega)
    S = D * (theta-tr)*sinc((((theta-tr)/2)*omega)/pi).*sinc((tr/2*omega)/pi);
end
