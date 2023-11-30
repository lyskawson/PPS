clear all;
close all;
fp=100;                         %liczba probek sygnalu podczas 1s  
f1=10; 
f2=10;
f3=15;
k0 =2;
fi1=0;                          %kat przesuniecia fazowego w radianach   
A1=2;
A2=6; 
A3=4;                           %amplituda
N = 200;                        %liczba probek sygnalu
t=0:1/fp:(N-1)/fp;              %od chwili 0 co 1/fp do (N-1)/fp –>  N wartości wektora czasu (od 0 do N-1)
x = A1*sin(2*pi*f1*t+fi1);

figure('Name','Graph with plot()')
plot (t, x);
grid on;
xlabel ('time [s]');
ylabel ('signal');
title ('sinusoid graph');





%%zadanie 1
figure('Name','Zadanie 1 ')
stem(t,x)
grid on;
xlabel ('time [s]');
ylabel ('signal');
title ('stem sinusoid graph');

%%zadanie 2
figure('Name','Zadanie 2')
x = A1*sin(2*pi*f1*t+fi1) + k0;
plot (t, x);
grid on;
xlabel ('time [s]');
ylabel ('signal');
title ('sinusoid graph + t0');

%%zadanie 3
N = 1000;
fp = 200;
t=0:1/fp:(N-1)/fp;              
figure('Name','Zadanie 3')
x1 = A1*sin(2*pi*f1*t);
x2 = A2*sin(2*pi*f2*t);
x= x1 + x2;

plot (t, x);
grid on;
xlabel ('time [s]');
ylabel ('signal');
title ('sum of 2 sinusoids graph');

%zadanie 4
figure('Name','Zadanie 4')
x1 = A1*sin(2*pi*f1*t);
x2 = A2*sin(2*pi*f2*t);
x3 = A3*sin(2*pi*f3*t);
x= x1 + x2 +x3;
plot (t, x);
grid on;
xlabel ('time [s]');  
ylabel ('signal');
title ('sum of 3 sinusoids graph');


%zadanie 5 
figure('Name','Zadanie 5')
x1 = A1*sin(2*pi*f1*t);
x2 = A2*sin(2*pi*f2*t);
x3 = A3*sin(2*pi*f3*t);

x = x1 + x2 + ((t >= 1) & (t <= 3)).* x3 ;

plot(t, x);
grid on;
xlabel ('time [s]');  
ylabel ('signal');
title ('sum of 3 sinusoids graph ');




