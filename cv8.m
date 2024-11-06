t=0:1:10000;
sr=3*randn(1,10001);
sh=1.5*cos(0.2*t);
s=sh+sr;

figure(1);
subplot(4,1,1);
plot(t,sr);
axis([0 1000 -15 15])
title("Náhodný šum s normálnym rozdelením");

subplot(4,1,2);
plot(t,sh);
axis([0 1000 -15 15])
title("Harmonický signál čistý");

subplot(4,1,3);
plot(t,s);
axis([0 1000 -15 15])
title("Harmonický signál silno zašumený");

[R,tau] = xcorr(s,'unbiased');
subplot(4,1,4);
plot(tau,R);
axis([-500 500 -15 15])
title("Harmonický signál odšumený");