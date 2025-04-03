[x, Fs]=audioread("slovo_caj.wav");

x = x(:,1);
segment = 1.05;
segment_length = 0.02;
time = 1:size(x);

figure();
t_start = segment*Fs;
t_stop = floor((segment+segment_length)*Fs);
subplot(2,1,1)
plot(time(1:t_start),x(1:t_start),"blue");
hold on
plot(time(t_start:t_stop), x(t_start:t_stop),"red");
hold on
plot(time(t_stop:end), x(t_stop:end),"blue");
hold off
subplot(2,1,2)
plot(time(t_start:t_stop), x(t_start:t_stop),"red");
figure();
subplot(2,1,1)
c= Clipped(x, segment_length, Fs, t_start);
plot(c)
r = xcorr(c);
subplot(2,1,2)
plot(r)


function c = Clipped(signal, dlzka, Fs, start)
    signal = signal((start-(dlzka*Fs)):(start+(dlzka*2*Fs)));
    maximum = max(signal);
    minimum = min(signal);
    signal(signal<(maximum*0.8) & signal>(minimum*0.8)) = [0];
    signal(signal>0) = [1];
    signal(signal<0) = [-1];
    signal = signal(((dlzka*Fs)):((2*dlzka*Fs))); 
    c = signal;
end