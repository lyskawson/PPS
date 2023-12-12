clear all; 
close all;                    
clc;

% 1. Zaimportuj dane do Matlaba + zmiana formatu na 'yyyy-MM-dd HH:mm:ss,SSS'
dane = readtable('temp.csv', 'Delimiter', ',');

dane.date = datetime(dane.date, 'InputFormat', 'yyyy-MM-dd HH:mm:ss');

% 2. Wyznacz srednią temp. w roku 2021 i 2022
year_2021 = dane(year(dane.date) == 2021, :);
year_2022 = dane(year(dane.date) == 2022, :);

avg_2021 = mean(year_2021.temperature, 'omitnan'); %  ignoring NaN values
disp('Średnia temperatura w 2021 roku:');
disp(avg_2021);

avg_2022 = mean(year_2022.temperature, 'omitnan');
disp('Średnia temperatura w 2022 roku:');
disp(avg_2022);


% 3. Wyznacz srednią za każdy miesiac i zapisz ja w macierzy temp_sr
temp_sr = zeros(12, 2); % matrix of zeroes 12x2

for i = 1:12
    temp_sr(i, 1) = mean(dane.temperature(month(dane.date) == i & year(dane.date) == 2021), 'omitnan');
    temp_sr(i, 2) = mean(dane.temperature(month(dane.date) == i & year(dane.date) == 2022), 'omitnan');
end

% 4. Narysuj wykres, ktory przedstawia srednią temperature w każdym z miesięcy
figure;
bar(temp_sr);
xlabel('Month');
ylabel('Average temperature');
legend('2021', '2022');
title('Average temperature in months 2021 and 2022');


% 5. Wyznacz odchylenie standardowe dla temperatury w każdym z miesiący
odchylenie = zeros(12, 2);  % matrix of zeroes 12x2

for i = 1:12
    odchylenie(i, 1) = std(dane.temperature(month(dane.date) == i & year(dane.date) == 2021), 'omitnan');
    odchylenie(i, 2) = std(dane.temperature(month(dane.date) == i & year(dane.date) == 2022), 'omitnan');
end

disp('Odchylenie standardowe dla temperatury w poszczególnych miesiącach:');
disp(odchylenie);

% 7. Wyznacz histogram temperatur w Polsce za okres 2021-2022
figure;
histogram(dane.temperature, 'BinEdges', -20:5:40); %przedzialy od -20 do 40 z krokiem 5
xlabel('Temperature [°C]');
ylabel('No. of samples');
title('Histogram of temperature in years 2021-2022');

% 6. Wyznacz autokorelację dla macierzy temp_sr
autokorelacja = zeros(12, 2);

for i = 1:12
    autokorelacja(i, 1) = autocorr(temp_sr(i, 1), 'NumLags', 10);
    autokorelacja(i, 2) = autocorr(temp_sr(i, 2), 'NumLags', 10);
end

disp('Autokorelacja dla macierzy temp_sr:');
disp(autokorelacja);