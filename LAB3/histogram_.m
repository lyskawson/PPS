
clear all; 
close all;                    
clc;

%  histogram - empiryczny rozklad prawdopodobienstwa 

x=[1 2 3 1 2 3 4 5 7 2 1 9 5 5 2 1 9 1 4 3 20 21]; %przykladowy sygnal
x_sr=mean(x); %srednia
x_od=std(x);  %odchylenie - jak bardzo dane roznia sie od sredniej 
x_war=var(x); %wariancja - srednia arytmetyczna kwadratow odchylen od ich sredniej
y=[20 21 1 2 3 1 2 3 4 5 7 2 1 9 5 5 2 1 9 1 4 3];
%y=cntr(y); %centrowanie - odjecie od kazdej probki sredniej sygnalu 
%y=stnd(y); %standaryzacja

x=rand(1,N); 
edges=min(x):2:max(x); %generowanie przedzialow dla histogramu

figure();
histogram(x,edges) %rysowanie histogramu dla wybranych przedzialow
nbins=20; %liczba przedzialow

histogram(x, nbins);
xlabel ('wartosc probki')
ylabel ('l.probek w przedziale')

