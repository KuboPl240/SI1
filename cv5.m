t = linspace(-30,30,10000);
x1 = 2*square((2*pi)/5*(t+1),2/5*100)+2;
x2 = 2*square((2*pi)/10*(t+1),2/10*100)+2;
x3 = 2*square((2*pi)/20*(t+1),2/20*100)+2;x4 = 2*square((2*pi)/40*(t+1),2/40*100)+2;





figure;
subplot(4,2,1);
plot(t,x1);
ylim([-1 5]);
xlim([-25 25]);
xticks(-25:(5):25);
ylabel('Napatie [V]');
title('Casove priebehy');

subplot(4,2,2);
k=5;
k_vals = 0:k;
frequencie = k_vals * (2*pi/5);
c_k = ck(k,2/5*5,5);
c_k = c_k./c_k(1);
stem(frequencie, abs(c_k),'Marker', 'none');
ylabel('|c_k|');
title('Spektrum amplitud');

subplot(4,2,3);
plot(t,x2);
ylim([-1 5]);
xlim([-25 25]);
xticks(-25:(5):25);
ylabel('Napatie [V]');

subplot(4,2,4);
k=10;
k_hodnoty = 0:k;
frequencie = k_hodnoty * (2*pi/10);
c_k = ck(k,2,10);
c_k = c_k./c_k(1);
stem(frequencie, abs(c_k),'Marker', 'none');
ylabel('|c_k|');

subplot(4,2,5)
plot(t,x3)
ylim([-1 5])
xlim([-25 25])
xticks(-25:(5):25);
ylabel('Napatie [V]')

subplot(4,2,6);
k=20;
k_hodnoty = 0:k;
frequencie = k_hodnoty * (2*pi/20);
c_k = ck(k,0.5,20);
c_k = c_k./c_k(1);
stem(frequencie, abs(c_k),'Marker', 'none');
ylabel('|c_k|');

subplot(4,2,7);
plot(t,x4);
ylim([-1 5]);
xlim([-25 25]);
xticks(-25:(5):25);
ylabel('Napatie [V]');
xlabel('Cas [s]');

subplot(4,2,8);
k=320;
k_hodnoty = 0:k;
frequencie = k_hodnoty* (2*pi/40);
c_k = ck(k,0.25,40);
c_k = c_k./c_k(1);
stem(frequencie, abs(c_k),'Marker', 'none');
xlabel('\omega_k [rad/s]');
ylabel('|c_k|');

function c_k = ck(N,tau,T)
    omega_0 = 2*pi/T;
    for k = 0:N
        if k == 0
            c_k(k+1) = 2 * tau/T; 
        else
            c_k(k+1) = 2* sin(k * omega_0 * tau / 2) / (k * pi);  
        end
    end
end