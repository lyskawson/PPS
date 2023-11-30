%% 1.
clear all

a = 4 - 6j;
b = -2 + 3j;

suma = a + b;
roznica = a - b;
iloczyn = a * b;
iloraz = a / b;

% Postać wykładnicza
% abs() zwraca moduł liczby zespolonej
% angle zwraca argument (kąt) liczby zespolonej
suma_wykladniczo = abs(suma) * exp(1i * rad2deg(angle(suma)));
roznica_wykladniczo = abs(roznica) * exp(1i * rad2deg(angle(roznica)));
iloczyn_wykladniczo = abs(iloczyn) * exp(1i * rad2deg(angle(iloczyn)));
iloraz_wykladniczo = abs(iloraz) * exp(1i * rad2deg(angle(iloraz)));


b_sprzezone = conj(b);

%% 2.

ans1 = exp(2*sin(2*pi));
ans2 = cos(pi/3)^4;
ans3 = log(sqrt(5));

%% 3. 
C = [2 3 0 1 4 7; 9 8 5 6 1 5; 0 4 3 2 1 5];

y = C(2, 3);
C(2, 4) = 7;
d = C(3, :);
D = C(:, [2,4]);
E = C([2, 3], [2:4]);

disp(size(C))
%% 4. 
F = zeros(3, 5);
F(:) = sqrt(1 + 1i);
F(:, [2 3]) = [];

%% 5. Operacje na macierzach A i B
A = [1 0; 3 2];
B = [1 2; 3 4];
iloczyn_macierzowy = A * B;
iloczyn_tablicowy = A .* B;
szescian_macierzowy = A^3;
szescian_tablicowy = A.^3;

C = (A + B') / 2;

%% 6. Rozwiązanie układu równań
A_6 = [3 2 -1; 4 2 -1; -2 -1 1];
B_6 = [1; 2; 3];
rozwiazanie = linesolve(A_6, B_6);

%% 7. Funkcja obliczająca wariancję
function wynik = oblicz_wariancje(x)
    n = length(x);
    srednia = sum(x) / n;
    wariancja = 0;
    for i = 1:n
        wariancja = wariancja + (x(i) - srednia)^2;
    end
    wariancja = wariancza / n;
    wynik = wariancja;
end

% Przykład użycia funkcji:
%x_7 = [1 2 3 4 5];
%wynik_wariancji = oblicz_wariancje(x);

%% 8. Funkcja obliczjaca silnie
function wynik = silnia(n)
    if n == 0 || n == 1
        wynik = 1;
    else
        wynik = 1;
        for i = 2:n
            wynik = wynik * i;
        end
    end
end

% Przykład użycia funkcji:
%n_8 = 5;
%wynik_silni = silnia(n);

%% 9. Wykres aproksymacji funkcji sin(x)
x = -2*pi:0.01:2*pi;
n_values = [1, 3, 5, 10, 30];
y_aproksymacja = zeros(length(n_values), length(x));

for i = 1:length(n_values)
    n = n_values(i);
    y_aproksymacja(i, :) = ((-1).^n) .* (x.^(2*n+1)) ./ factorial(2*n+1);
end

y_aproksymacja = sum(y_aproksymacja);
plot(x, sin(x), x, y_aproksymacja);
legend('sin(x)', 'Aproksymacja');
xlabel('x');
ylabel('Wartość funkcji');
title('Aproksymacja funkcji sin(x) za pomocą szeregu Taylora');

%% 10. Wykres funkcji y = A * exp(B * sin(x))
x = [0:0.1:20];
y1 = 2 * exp(3 * sin(x));
y2 = 1 * exp(-3 * sin(x));
plot(x, y1, 'k-', x, y2, 'b--');
xlabel('x');
ylabel('y');
legend('A=2, B=3', 'A=1, B=-3');
title('Wykres funkcji y = A * exp(B * sin(x))');

%% 11. Wykres funkcji f(x, y)
x = [-3:0.1:3];
y = [-3:0.1:3];
[X, Y] = meshgrid(x, y);
Z = exp(-(X-1).^2 - Y.^2) + exp(-(X+1).^2 - Y.^2);
figure;
mesh(X, Y, Z); 
xlabel('x');
ylabel('y');
zlabel('f(x, y)');
title('Wykres funkcji f(x, y) = exp(-(x-1)^2 - y^2) + exp(-(x+1)^2 - y^2)');
