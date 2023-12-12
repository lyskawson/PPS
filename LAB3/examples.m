% Lab3
%% standaryzacja
wektor = 1 : 10 : 1000;
srednia = mean(wektor);
centrowany_wektor = wektor - srednia;
odchylenie_standardowe = std(wektor);
ustandaryzowany_wektor = centrowany_wektor / odchylenie_standardowe;

x = mean(ustandaryzowany_wektor);
y = std(ustandaryzowany_wektor);

disp(x)
disp(y)

% Z histogramu ostrzymujemy empiryczny rozkład prawdopodobieństwa - na
% kartkówkę!!!

%% Histogram
 nbins = 5;
 k = [1.63 1.67 1.73 1.83 1.87 1.90];
 histogram(k, nbins);
 
% Liczenie splotu - na kartkówkę !!!

%% Autokorelacja
t = 0 : 0.01 : 10;
f1 = 2;
fi = 1;
kmax = 200;
sin1 = sin(2*pi*f1*t);
sin2 = sin(2*pi*f1*t + fi);

% Liczenie autokorelacji
[rx, tau] = xcorr(sin1, sin2, kmax);
%disp(autokorelacja)
% Rysowanie autokorelacji
plot(tau, rx);

% Na kartkówkę - wykres autokorelacji (podobny do autokorelacji białego
% szumu) - wykres funkcji sin(x)/x - funkcja Se
% Funkcja x = gen(N 0.01 0.1 0.7 0.9) - im bardziej zwężamy pasmo (wartości
% w nawiasach) tym bardziej przypomina sinusa

% W wykresach autokorelacji:
% Szerokie pasmo - wykres jak biały szum
% Wąskie pasmo - wykres jak sinus
% Średnie pasmo - wykres jak sin(x)/x



% Na kartkówkę:
% Centrowanie sygnału
% Rysowanie histogramów, co to histogram, co można z niego odczytać
% Policzenie ręcznie korelację autokorelację
% Określenie pasma sygnału na podstawie autokorelacji