% ===================================================== %
% UTS Matematika Sains Data — Semester Genap 2025/2026 
% Soal 5.4 — Plot Fungsi Piecewise Kontinu
% --------------------------------------------------- 
% Nama  : Irsyad Fadhil
% NIM   : 2510514034
% Parameter: K=8, a=3, p=16, q=-8
% =====================================================

syms x
K = 8; a = 3; p = 16; q = -8;

% Definisi 3 bagian fungsi
c1 = (x^2 - K^2) / (x - K); % Untuk x < K
c2 = p;                     % Untuk x = K
c3 = a*x + q;               % Untuk x > K

figure;
hold on; grid on;

% Plot masing-masing bagian
fplot(c1, [0 K], 'b', 'LineWidth', 2);
plot(K, p, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Titik sambung
fplot(c3, [K 2*K], 'g', 'LineWidth', 2);

% Menambahkan garis vertikal tipis di x = K
line([K K], [0 2*p], 'Color', [0.5 0.5 0.5], 'LineStyle', '--');

% Labeling dan Estetika
title('Visualisasi Fungsi Biaya Distribusi Kontinu C(x)');
xlabel('Unit Produk (x)');
ylabel('Biaya C(x)');
legend('x < K (Biaya Variabel)', 'x = K (Titik Kontinu)', 'x > K (Biaya Tetap+Variabel)', 'Location', 'NorthWest');
hold off;