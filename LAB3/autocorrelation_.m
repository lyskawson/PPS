clear all; 
close all;                    
clc;

%autokorelacja x

kmax =200; %dlugosc autokorelacji - ile probek na siebie zachodzi
x=[2 3 1 5]
y=[1 2 4]
y=[2 3 1 5];
figure;
[rx, tau]=xcorr(x, x, kmax); %zwraca wektor przesuniecia i autokorelacji, mozna zamienic na korelacje krzyzowa
plot(tau, rx); %rysuje autokorelacje

figure;
[rx, tau]=xcorr(x,x, kmax, 'coeff'); %unormowana autokorelacja
plot(tau, rx);
[i, j]=size(rx); %zwraca rozmiar wektora rx

figure;
rx=rx/(rx(ceil(j/2))); %wyznaczenie srodkowej wartosci wektora
plot(tau, rx);

figure;
tr = -kmax/fp:1/fp:kmax/fp; %przeliczenie przesuniecia na czas
plot(tr, rx);
%tr = -kmax:kmax; %zakres autokorelacji na osi x - os x w przesunieciach
xlabel ('przesuniecie[s]')
ylabel ('autokorelacja')

%autokorelacja sinusa to cosinus 
