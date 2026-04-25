
% UTS Matematika Sains Data — Semester Genap 2025/2026 
% Soal 5.1 — Verifikasi Limit dengan MATLAB
% --------------------------------------------------- 
% Nama  : Irsyad Fadhil
% NIM   : 2510514034
% Parameter: K=8, a=3, b=4
% Tanggal: 24 April 2026 
% =====================================================

syms x

% Parameter
a = 3; b = 4; K = 8;

% Definisi Fungsi
f1 = (x^2 - K^2) / (x - K);
f2 = (sqrt(x + (K+1)^2) - (K+1)) / x;
f3 = ((a+2)*x^3 + b*x + 7) / (x^3 - x + K);

% Menghitung Limit
L1 = limit(f1, x, K);
L2 = limit(f2, x, 0);
L3 = limit(f3, x, inf);

% Menampilkan Hasil
fprintf('=== HASIL VERIFIKASI LIMIT ===\n');
fprintf('L1 (x -> %d) = %s\n', K, char(L1));
fprintf('L2 (x -> 0)  = %s\n', char(L2));
fprintf('L3 (x -> inf)= %s\n', char(L3));