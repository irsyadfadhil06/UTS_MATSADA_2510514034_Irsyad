% ===================================================== 
% UTS Matematika Sains Data — Semester Genap 2025/2026 
% Soal 7.4 E
% Nama  : Irsyad Fadhil 
% NIM   : 2510514034
% Parameter: N=34, a=3, b=4, K=8, theta0=110, alpha=0.005 
% Tanggal: 28 April 2026
% ===================================================== 
clc; clear; close all;

% 1. Data Historis
t_hist = 1:12;
K = 8; a = 3;
Sn = 50 + (K .* t_hist) + ((-1) .^ t_hist) .* (a + 1);

% 2. Fitting Linear (polyfit degree 1)
p = polyfit(t_hist, Sn, 1); % p(1)=slope, p(2)=intercept
trend_line = polyval(p, t_hist);

% 3. Prediksi 6 bulan ke depan (t = 13 sampai 18)
t_pred = 13:18;
Sn_pred = polyval(p, t_pred);

% 4. Plotting
figure;
plot(t_hist, Sn, 'bo', 'MarkerFaceColor', 'b'); hold on;
plot(t_hist, trend_line, 'r--', 'LineWidth', 2);
plot(t_pred, Sn_pred, 'g^', 'MarkerFaceColor', 'g');
grid on;
xlabel('Bulan (n)'); ylabel('Penjualan (Juta Rp)');
legend('Data Historis', 'Garis Tren Linear', 'Prediksi 6 Bulan');
title('Forecasting Penjualan 12 Bulan + Prediksi');

% Output Koefisien
fprintf('Koefisien Garis Tren:\n');
fprintf('Slope (m)     = %.4f\n', p(1));
fprintf('Intercept (c) = %.4f\n', p(2));