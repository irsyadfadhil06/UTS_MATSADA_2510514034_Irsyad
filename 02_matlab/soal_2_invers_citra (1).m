% ===================================================== %
% UTS Matematika Sains Data — Semester Genap 2025/2026 
% Soal 2d — Verifikasi Invers Matriks & Error Frobenius
% --------------------------------------------------- 
% Nama  : Irsyad Fadhil 
% NIM   : 2510514034
% Parameter: N=34, a=3, b=4, K=8, theta0=110, alpha=0.005 
% Tanggal: 21 April 2026 
% =====================================================
%% 1. Definisi Matriks A (Berdasarkan Parameter a=3, b=4)
A = [4 4 2; 
     1 11 1; 
     4 1 6];
n = size(A, 1);
C = zeros(n); % Inisialisasi matriks kofaktor
%% 2. Perhitungan Matriks Kofaktor menggunakan Nested Loop
% Metode ini mengikuti contoh tugas Pertemuan 2
for i = 1:n
    for j = 1:n
        % Membuat sub-matriks dengan menghapus baris i dan kolom j
        sub = A;
        sub(i,:) = [];
        sub(:,j) = [];
        
        % Hitung kofaktor: (-1)^(i+j) * determinan sub-matriks
        C(i,j) = ((-1)^(i+j)) * det(sub);
    end
end
%% 3. Matriks Adjoin dan Invers Manual
AdjA = C';               % Adjoin adalah transpose dari kofaktor
detA = det(A);           % Menghitung determinan A
A_inv_manual = AdjA / detA; % Invers manual: Adj(A)/det(A)
%% 4. Verifikasi dengan Fungsi Built-in MATLAB
A_inv_builtin = inv(A);
%% 5. Hitung Norma Error Frobenius
% Membandingkan selisih antara hasil manual dan fungsi inv()
error_fro = norm(A_inv_manual - A_inv_builtin, 'fro');
%% 6. Menampilkan Hasil ke Command Window
fprintf('========================================\n');
fprintf('       HASIL VERIFIKASI SOAL 2d         \n');
fprintf('========================================\n');
fprintf('Determinan A      : %.2f\n', detA);
fprintf('Error Frobenius   : %.2e\n', error_fro);
fprintf('----------------------------------------\n');
if error_fro < 1e-10
    disp('KESIMPULAN: Verifikasi BERHASIL.');
    disp('Hasil perhitungan manual identik dengan inv(A) MATLAB.');
else
    disp('KESIMPULAN: Terdapat perbedaan hasil.');
end
disp('Matriks Invers Manual (A_inv_manual):');
disp(A_inv_manual);
