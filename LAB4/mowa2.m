


close all
clear all

% Wczytaj plik dźwiękowy
[signal, fp] = audioread('mbi04czap.wav');

% Przebieg czasowy
figure;

plot(signal,Color='g');
T = length(signal);
Nf = T;
v = fft (signal,Nf);        % widmo zespolone
w = abs (v);                % widmo amlitudowe
f = linspace (0, fp, Nf);   % generowanie osi czestotliwosci
sound(signal,fp);
xlabel('t[s]')
ylabel('x')
title('Przebieg czasowy sygnału');

% Widmo
figure;

xl = length(signal);
v = abs(fft(signal,xl));
f = linspace (0, fp, xl);   % generowanie osi czestotliwosci
plot (f,v, Color='r')
xlabel('f[Hz]')
ylabel('x')
title('Widmo sygnału');

% Spektogram
figure()
spectrogram(signal, kaiser(64), 32, 1024, fp, 'yaxis');
title('Spektrogram')


% Wydzielenie fragmentów sygnału w określonych przedziałach czasu
startTime1 = 0.08; 
endTime1 = 0.2;   

startTime3 = 0.45;  
endTime3 = 0.55;    

% Konwersja czasu na indeksy próbek
indexStart1 = round(startTime1 * fp);
indexEnd1 = round(endTime1 * fp);

indexStart3 = round(startTime3 * fp);
indexEnd3 = round(endTime3 * fp);

% Wydzielenie próbek sygnału z przedziałów
gloska1 = signal(indexStart1 : indexEnd1);
gloska3 = signal(indexStart3 : indexEnd3);


% Rysowanie widma głoski 1
figure()
xl = length(gloska1);
v = abs(fft(gloska1,xl));
f = linspace (0, fp, xl);   % generowanie osi czestotliwosci
plot (f,v)


xlabel('f')
ylabel('x')
title('Widmo głoski 1');


% Rysowanie widma głoski 3
figure
xl = length(gloska3);
v = abs(fft(gloska3,xl));
f = linspace (0, fp, xl);   % generowanie osi czestotliwosci
plot (f,v)

xlabel('f')
ylabel('x')
title('Widmo głoski 2');

