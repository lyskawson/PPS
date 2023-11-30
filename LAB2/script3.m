close all;
clear all;

fp = 20; % czestotliwosc probkowania
t = 0:1/fp:5; % wektor czasu od 0 do 5 sekund z krokiem 1/20
f0 = 1; % czestotliowsc poczatkowa
f1 = 5; % czestotliowosc koncowa
t1 = 5; % czas w ktorym osiągana jest f koncowa  
t2 =2;  % czas w ktorym osiągana jest f koncowa 




%zadanie 1
chirpSignal = chirp(t, f0, t1, f1);
figure;
plot(t, chirpSignal);
xlabel('time[s]');
ylabel('signal');
title('chirp signal t1 = 5');

%zadanie 2
chirpSignal = chirp(t, f0, t2, f1);
figure;
plot(t, chirpSignal);
xlabel('time[s]');
ylabel('signal');
title('chirp signal t1 = 2');

%zadanie 3 
chirpSignal = chirp(t, f0, t1, f1, 'logarithmic');
figure;
plot(t, chirpSignal);
xlabel('time[s]');
ylabel('signal');
title('logaritmic chirp signal');


