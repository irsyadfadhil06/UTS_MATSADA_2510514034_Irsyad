% ===================================================== %
% UTS Matematika Sains Data — Semester Genap 2025/2026 
% Soal 4 — bagian e 
% --------------------------------------------------- 
% Nama  : Irsyad Fadhil
% NIM   : 2510514034
% Parameter: N=34, a=3, b=4, K=8, theta0=110, alpha=0.005 
% Tanggal: 23 April 2026 
% =====================================================

% Parameter dari soal (d)
theta0 = 110;
r_akar = 2;

% Mendefinisikan ketiga akar
k = 0:2;
sudut_akar = (deg2rad(theta0) + 2*pi*k) / 3;
akar = r_akar * exp(1i * sudut_akar);

% Plotting di Bidang Argand
figure;
hold on; grid on; axis equal;

% 1. Gambar Lingkaran Berjari-jari 2
theta_lingkaran = linspace(0, 2*pi, 100);
plot(2*cos(theta_lingkaran), 2*sin(theta_lingkaran), 'k--', 'LineWidth', 1);

% 2. Plot Akar sebagai Titik
plot(real(akar), imag(akar), 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');

% 3. Hubungkan Akar untuk Membentuk Segitiga
plot([real(akar), real(akar(1))], [imag(akar), imag(akar(1))], 'b-', 'LineWidth', 1.5);

% Tambahan label
title('Plot Akar Kubik z^3 = 8 cis(110^\circ) di Bidang Argand');
xlabel('Riil'); ylabel('Imajiner');
text(real(akar), imag(akar), {' z_0', ' z_1', ' z_2'}, 'FontSize', 12);
xlim([-2.5 2.5]); ylim([-2.5 2.5]);