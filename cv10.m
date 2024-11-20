
fvz = 128;         
T = 1 / fvz;       
tmax = 1;          
f1 = 32;           
f2 = 31.5;         

t = 0:T:tmax-T;   

s1 = 5 * cos(2 * pi * f1 * t); % Signál s frekvenciou 32 Hz
s2 = 5 * cos(2 * pi * f2 * t); % Signál s frekvenciou 31.5 Hz
N = length(t);

k = 0:N-1;

figure;
subplot(2, 1, 1);
S = fft(s1,N);
Mod = 2*abs(S)/N;
stem(k, Mod);
title('Signál s frekvenciou 32 Hz');
xlabel('Vzorka n');
ylabel('Amplitúda');
grid on;

subplot(2, 1, 2);
S = fft(s2,N);
Mod = 2*abs(S)/N;
stem(k, Mod, 'red');
title('Signál s frekvenciou 31.5 Hz');
xlabel('Vzorka n');
ylabel('Amplitúda');
grid on;