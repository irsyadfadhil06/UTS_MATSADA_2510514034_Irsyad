% =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal: Bagian f - Visualisasi Blok Citra (Asli vs Terenkripsi)
% -----------------------------------------------------
% Nama    : Irsyad Fadhil
% NIM     : 2510514034
% Parameter: N=34, a=3, b=4
% Tanggal : 26 April 2026
% =====================================================

clc; clear; close all;

% Parameter personalisasi
N = 34; a = 3; b = 4;

% --- Langkah 1: Definisi Matriks ---

% Matriks Piksel Asli (P)
% Sesuai dengan nilai N=34, a=3
P = [120, 84, 200; 
     80, 5, 44; 
     64, 90, 170];

% Matriks Hasil Enkripsi (E)
% Hasil perhitungan manual enkripsi E = A * P
E = [928, 536, 1316; 
     904, 1079, 2114; 
     944, 881, 1864];

% --- Langkah 2: Visualisasi Subplot ---

figure('Name', 'Visualisasi Rekonstruksi Blok Citra', 'NumberTitle', 'off');

% Menampilkan Blok Piksel Asli
subplot(1, 2, 1);
imshow(P, []); 
title('Blok Piksel Asli (P)');
colorbar; % Menampilkan skala intensitas untuk melihat rentang nilai (0-255)

% Menampilkan Blok Piksel Terenkripsi
subplot(1, 2, 2);
imshow(E, []); 
title('Blok Piksel Terenkripsi (E)');
colorbar; % Menampilkan skala intensitas hasil enkripsi (nilai > 255)

% --- Catatan ---
% Penggunaan [] pada imshow(matriks, []) bertujuan untuk melakukan 
% auto-scaling intensitas. Fungsi ini memetakan nilai minimum matriks ke 
% warna hitam dan nilai maksimum ke putih, sehingga visualisasi tetap 
% terbaca meskipun rentang nilai citra E jauh lebih besar dari 255.