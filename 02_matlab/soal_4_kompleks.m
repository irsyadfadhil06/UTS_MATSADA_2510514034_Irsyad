% ===================================================== %
% UTS Matematika Sains Data — Semester Genap 2025/2026 
% Soal  4 — Kompleks
% --------------------------------------------------- 
% Nama  : Irsyad Fadhil
% NIM   : 2510514034
% Parameter: N=34, a=3, b=4, K=8, theta0=0, alpha=0.01 
% Tanggal: 23 April 2026 
% =====================================================

% 1. Definisi Parameter dan Fasor
a = 3;
b = 4;

z1 = (a + 2) + (b + 1)*1i; % Hasilnya 5 + 5i
z2 = (b + 1) - (a + 2)*1i; % Hasilnya 5 - 5i

% 4a. Konversi ke Bentuk Kutub (Verifikasi)
[theta1_rad, r1] = cart2pol(real(z1), imag(z1));
theta1_deg = rad2deg(theta1_rad);

[theta2_rad, r2] = cart2pol(real(z2), imag(z2));
theta2_deg = rad2deg(theta2_rad);

% 4b. Operasi Aritmatika
hasil_tambah = z1 + z2;
hasil_kali   = z1 * z2;
hasil_bagi   = z1 / z2;
hasil_mod_selisih = abs(z1 - z2);

% --- Menampilkan Output ---
fprintf('=== VERIFIKASI SOAL 4a (Bentuk Kutub) ===\n');
fprintf('z1: r = %.4f, theta = %.4f rad (%.4f deg)\n', r1, theta1_rad, theta1_deg);
fprintf('z2: r = %.4f, theta = %.4f rad (%.4f deg)\n\n', r2, theta2_rad, theta2_deg);

fprintf('=== VERIFIKASI SOAL 4b (Operasi) ===\n');
fprintf('z1 + z2   = %.0f\n', hasil_tambah);
fprintf('z1 * z2   = %.0f\n', hasil_kali);
fprintf('z1 / z2   = %.0f + %.0fi\n', real(hasil_bagi), imag(hasil_bagi));
fprintf('|z1 - z2| = %.0f\n', hasil_mod_selisih);