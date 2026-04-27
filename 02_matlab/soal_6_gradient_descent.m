% ===================================================== 
% UTS Matematika Sains Data — Semester Genap 2025/2026 
% Soal 6.2 (e)
% Nama  : Irsyad Fadhil 
% NIM   : 2510514034
% Parameter: N=34, a=3, b=4, K=8, theta0=110, alpha=0.005 
% Tanggal: 27 April 2026 
% ===================================================== 
clc; clear; close all; 

% Parameter personalisasi
N = 34; a = 3; b = 4; K = 8; 
alpha_lr = 0.005; 
iter = 500;

% Fungsi Profit dan Turunan (berdasarkan parameter a=3, b=4, K=8)
% pi(x) = -4x^3 + 72x^2 + 100x - 640
% pi'(x) = -12x^2 + 144x + 100
f_pi = @(x) -4*x^3 + 72*x^2 + 100*x - 640;
f_grad = @(x) -12*x^2 + 144*x + 100;

% Inisialisasi
x = 1.0; % x0
x_hist = zeros(iter+1, 1);
pi_hist = zeros(iter+1, 1);
x_hist(1) = x;
pi_hist(1) = f_pi(x);

% Gradient Descent Loop
for k = 1:iter
    x = x + alpha_lr * f_grad(x); % Update Rule
    x_hist(k+1) = x;
    pi_hist(k+1) = f_pi(x);
end

% Plotting
k_vec = 0:iter;
figure('Color', 'w');
plot(k_vec, pi_hist, 'b', 'LineWidth', 1.5);
hold on;

% Menambahkan Solusi Analitik (x=12.6583)
x_analitik = 12.6583;
pi_optimum = f_pi(x_analitik);
yline(pi_optimum, 'r--', 'LineWidth', 1.2, 'DisplayName', 'Optimum Analitik');

% Titik Awal dan Akhir
plot(0, pi_hist(1), 'ko', 'MarkerSize', 8, 'DisplayName', 'Titik Awal (x0=1)');
plot(iter, pi_hist(end), 'gs', 'MarkerSize', 8, 'DisplayName', 'Titik Akhir (x500)');

xlabel('Iterasi (k)');
ylabel('Profit pi(x_k)');
title('Grafik Konvergensi Gradient Descent');
grid on; legend('Location', 'best');

% Perbandingan
fprintf('Nilai x akhir (x500): %.6f\n', x_hist(end));
fprintf('Nilai x optimal (analitik): %.6f\n', x_analitik);