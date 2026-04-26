% =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 2 
% ---------------------------------------------------
% Nama  : Irsyad Fadhil
% NIM   : 2510514034
% Parameter: N=34, a=3, b=4
% Tanggal: 26 April 2026
% =====================================================

clc; clear; close all;

% Parameter personalisasi
N = 34; a = 3; b = 4;

% 1. Definisi Matriks Kunci A
% Baris 1: [a+1, b, 2]
% Baris 2: [1, 1, a+2b]
% Baris 3: [b, 1, a+3]
A = [a+1, b, 2; 1, 1, a+2*b; b, 1, a+3];

% 2. Definisi Matriks Piksel P (Contoh blok citra)
P = [120, 50+N, 200; 80, a+2, 10+N; 30+N, 90, 170];

% 3. Enkripsi: E = A * P
E = A * P;

% 4. Invers Matriks A (Untuk Dekripsi)
A_inv = inv(A);

% 5. Dekripsi: P_aksen = A_inv * E
P_aksen = A_inv * E;

% Tampilkan Hasil
fprintf('Matriks Kunci A:\n'); disp(A);
fprintf('Matriks Piksel P:\n'); disp(P);
fprintf('Matriks Terenkripsi E:\n'); disp(E);
fprintf('Matriks Hasil Dekripsi P_aksen:\n'); disp(P_aksen);

% Verifikasi: Pastikan P_aksen mendekati P (Error Frobenius harus sangat kecil)
error_fro = norm(P - P_aksen, 'fro');
fprintf('Error Frobenius: %.2e\n', error_fro);