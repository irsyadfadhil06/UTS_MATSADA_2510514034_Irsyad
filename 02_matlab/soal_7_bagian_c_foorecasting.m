% ===================================================== 
% UTS Matematika Sains Data — Semester Genap 2025/2026 
% Soal 7.2 C
% Nama  : Irsyad Fadhil 
% NIM   : 2510514034
% Parameter: N=34, a=3, b=4, K=8, theta0=110, alpha=0.005 
% Tanggal: 28 April 2026
% ===================================================== 
clc; clear; close all; 

% 1. Definisi Parameter
n = 1:12;
K = 8;
a = 3;

% 2. Menghitung array S_n secara eksplisit
% Rumus: S_n = 50 + K*n + (-1)^n * (a+1)
Sn = 50 + (K .* n) + ((-1) .^ n) .* (a + 1);

% 3. Menghitung T1 (Total Penjualan) dan T2 (Sum of Squares)
T1 = sum(Sn);
T2 = sum(Sn .^ 2);

% 4. Menampilkan hasil ke Command Window
fprintf('Hasil Verifikasi MATLAB:\n');
fprintf('T1 (Total Penjualan) = %.0f\n', T1);
fprintf('T2 (Sum of Squares)  = %.0f\n', T2);