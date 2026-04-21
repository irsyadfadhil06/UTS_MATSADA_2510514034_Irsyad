% ===================================================== %
% UTS Matematika Sains Data — Semester Genap 2025/2026 
% Soal 2f — Visualisasi Blok Citra (Asli vs Enkripsi)
% --------------------------------------------------- 
% Nama  : Irsyad Fadhil 
% NIM   : 2510514034
% Tanggal: 21 April 2026 
% =====================================================

%% 1. Definisi Matriks
% Matriks P (Blok Piksel Asli)
P = [120 84 200; 
      80 5 44; 
      64 90 170];

% Matriks E (Hasil Enkripsi A * P)
E = [928 536 1316; 
     1064 229 854; 
     944 881 1864];

%% 2. Visualisasi dengan Subplot
figure('Name', 'Visualisasi Enkripsi Citra');

% Menampilkan Blok Piksel Asli
subplot(1, 2, 1);
imshow(P, []); 
title('Blok Piksel Asli (P)');
colorbar; % Menampilkan skala warna untuk melihat intensitas piksel

% Menampilkan Blok Piksel Hasil Enkripsi
subplot(1, 2, 2);
imshow(E, []); 
title('Blok Piksel Terenkripsi (E)');
colorbar;

%% 3. Penjelasan
% Fungsi imshow(matriks, []) secara otomatis melakukan scaling 
% intensitas warna berdasarkan nilai minimum dan maksimum matriks.
% Terlihat bahwa nilai pada E jauh lebih besar daripada P, 
% sehingga citra hasil enkripsi akan tampak jauh lebih terang 
% atau memiliki distribusi warna yang berbeda total.