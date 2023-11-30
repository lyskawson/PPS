close all;
clear all;

% zadanie 1
file = 'wavy/mbi04osiem.wav';
[x, fs] = audioread(file); % fs -> sample rate

% zadanie 2
t = (0:length(x)-1) / fs;
figure;
plot(t, x);
title('audio signal');
xlabel('time (s)');
ylabel('amplitude');

% zadanie 3
sound(x, fs);

% zadanie 4 
start_time = 0;
stop_time = 0.2;
start_sample = round(start_time * fs) + 1; % indeksy w zaczynają się od 1
end_sample = round(stop_time * fs);
x2 = x(start_sample:end_sample);

sound(x2, fs);

audiowrite('fragment_audio.wav', x2, fs);