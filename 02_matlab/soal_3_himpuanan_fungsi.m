% ===================================================== %
% UTS Matematika Sains Data — Semester Genap 2025/2026 
% Soal 2b — Verifikasi Himpunan
% --------------------------------------------------- 
% Nama  : Irsyad Fadhil 
% NIM   : 2510514034
% Parameter: N=34, a=3, b=4, K=8, theta0=110, alpha=0.005 
% Tanggal : 23/04/2026
% =====================================================

clc; clear; close all; 

% Parameter personalisasi berdasarkan NIM ...34
N = 34;  a = 3;  b = 4;  K = 8; 
theta0 = 110; % derajat 
alpha_lr = 0.005; 

%% 1. Definisi Himpunan
N = 34;
U = N:N+20; % Universe

A = [N, N+2, N+4, N+7, N+10, N+13, N+15];
B = [N+3, N+5, N+7, N+10, N+12, N+18];
C = [N+1, N+7, N+10, N+11, N+17, N+20];

%% 2. Perhitungan Verifikasi
% a. |A u B u C|
union_ABC = union(A, union(B, C));
res_a = length(union_ABC);

% b. |A n B n C|
intersect_ABC = intersect(A, intersect(B, C));
res_b = length(intersect_ABC);

% c. |(A u B) n C'| 
% Catatan: Irisan dengan komplemen C sama dengan selisih himpunan (setdiff)
union_AB = union(A, B);
res_c = length(setdiff(union_AB, C));

% d. |A XOR B| (Symmetric Difference)
res_d = length(setxor(A, B));

%% 3. Menampilkan Hasil
fprintf('========================================\n');
fprintf('       VERIFIKASI HIMPUNAN (N=34)       \n');
fprintf('========================================\n');
fprintf('1. |A u B u C|       : %d\n', res_a);
fprintf('2. |A n B n C|       : %d\n', res_b);
fprintf('3. |(A u B) n C''|     : %d\n', res_c);
fprintf('4. |A (+) B|         : %d\n', res_d);
fprintf('----------------------------------------\n');