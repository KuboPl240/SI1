
tau = 10;      
A = 16;        
omega_0 = 2*pi/20;  


N = 100;


c_k = zeros(1, N+1);

for k = 0:N
    if k == 0
        c_k(k+N+1) = A * 1/2; 
    else
        c_k(k+N+1) = A * sin(k * omega_0 * tau / 2) / (k * pi);  
    end
end

s = [];
for t = 0:0.1:60
    sumck = 0;
    for k = 0:3
        if k == 0
            sumck = sumck + c_k(k+N+1);
        else
            sumck = sumck +2*abs(c_k(k+N+1))*cos(k*omega_0*t+angle(c_k(k+N+1)));
        end
    end
    s = [s,sumck];
end


figure;
subplot(2,2,1);
plot(s)
xlabel('t[s]');
ylabel('s(t)');

s = [];
for t = 0:0.1:60
    sumck = 0;
    for k = 0:10
        if k == 0
            sumck = sumck + c_k(k+N+1);
        else
            sumck = sumck +2*abs(c_k(k+N+1))*cos(k*omega_0*t+angle(c_k(k+N+1)));
        end
    end
    s = [s,sumck];
end

subplot(2,2,2);
plot(s)
xlabel('t[s]');
ylabel('s(t)');

s = [];
for t = 0:0.1:60
    sumck = 0;
    for k = 0:20
        if k == 0
            sumck = sumck + c_k(k+N+1);
        else
            sumck = sumck +2*abs(c_k(k+N+1))*cos(k*omega_0*t+angle(c_k(k+N+1)));
        end
    end
    s = [s,sumck];
end
subplot(2,2,3);
plot(s)
xlabel('t[s]');
ylabel('s(t)');

s = [];
for t = 0:0.1:60
    sumck = 0;
    for k = 0:100
        if k == 0
            sumck = sumck + c_k(k+N+1);
        else
            sumck = sumck +2*abs(c_k(k+N+1))*cos(k*omega_0*t+angle(c_k(k+N+1)));
        end
    end
    s = [s,sumck];
end
subplot(2,2,4);
plot(s)
xlabel('t[s]');
ylabel('s(t)');