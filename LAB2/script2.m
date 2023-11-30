close all;
clear all;

% Skrypt 1
fp = 100;
f1 = 10;
fi1 = 0;
A1 = 2;
N = 1000; % liczba próbek sygnału sinusoidalnego
N2 = 1000; %liczba probek szumu
t = 0:1/fp:(N-1)/fp;
x_s = A1 * sin(2 * pi * f1 * t + fi1);

%zadanie 1
 
random_signal = rand(1, N); % sygnał z rozkładu równomiernego od 0 do 1
x = random_signal + x_s;

figure('Name','zadanie 1');     
subplot(2, 2, 1);
plot(t, x_s);
xlabel('time[s]');
ylabel('signal');
title('sinusoid signal');

subplot(2, 2, 2);
plot(t, random_signal);
xlabel('time[s]');
ylabel('signal');
title('noise');


subplot(2, 2, 3:4);
plot(t, x);
xlabel('czas [s]');
ylabel('sygnał');
title('sinusoid signal + noise');

%%zadanie 2

random_signal = rand(1, N2) * 0.04 + 0.01; % sygnał od 0.01 do 0.05
x = random_signal + x_s;

figure('Name','zadanie 2');     
subplot(2, 2, 1);
plot(t, x_s);
xlabel('time[s]');
ylabel('signal');
title('sinusoid signal');

subplot(2, 2, 2);
plot(t, random_signal);
xlabel('time[s]');
ylabel('signal');
title('noise');


subplot(2, 2, 3:4);
plot(t, x);
xlabel('czas [s]');
ylabel('sygnał');
title('sinusoid signal + noise');

%zadanie 3

random_signal = randn(1, N2); % sygnał z rozkładu normalnego 
x = random_signal + x_s;

figure('Name','zadanie 3');     
subplot(2, 2, 1);
plot(t, x_s);
xlabel('time[s]');
ylabel('signal');
title('sinusoid signal');

subplot(2, 2, 2);
plot(t, random_signal);
xlabel('time[s]');
ylabel('signal');
title('noise');


subplot(2, 2, 3:4);
plot(t, x);
xlabel('czas [s]');
ylabel('sygnał');
title('sinusoid signal + nise');

%%zadanie 4



mu = 0.01; % średnia sygnału losowego
sigma = sqrt(0.5); % odchylenie standardowe (pierwiastek z wariancji) sygnału losowego
random_signal = mu + randn(1, N2); % sygnał z rozkładu normalnego


x = random_signal + x_s;


figure('Name','zadanie 4');     
subplot(2, 2, 1);
plot(t, x_s);
xlabel('time[s]');
ylabel('signal');
title('sinusoid signal');

subplot(2, 2, 2);
plot(t, random_signal);
xlabel('time[s]');
ylabel('signal');
title('noise');

subplot(2, 2, 3:4);
plot(t, x);
xlabel('czas [s]');
ylabel('sygnał');
title('sinusoid signal + noise');

