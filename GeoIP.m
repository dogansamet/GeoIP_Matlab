clear; clc; %close all;

%===== G�r�nt� y�kleme =====
[s sd] = load_im;

%===== Boyutlar =====
[R C B] = size(sd);

%===== Band(lar)a ay�rma =====
if B == 1
    s1 = sd;
elseif B == 3
    s1 = sd(: , : , 1);
    s2 = sd(: , : , 2);
    s3 = sd(: , : , 3);
elseif B == 4
    s4 = sd(: , : , 4);
end

%===== Combine bands into one image =====
% combo_image

%===== Ortalama ve standart sapma =====
% [ga m0] = ort(s1, R, C);

%===== Korelasyon =====
% img_corre(sd)

%===== Entropi =====
% ent = entropy(s1);

%===== D�nd�rme =====
rotate(s);

%===== Boyut k���ltme =====
sr = resizing(s1);

%===== Kontrast geni�letme =====
% skg = kg(s, s1);

%===== Histogram e�itleme =====
% she = histeq(s1);
% figure; imshow(she); hold on; title('Histogram e�itlemeli g�r�nt�');
% figure; imhist(she); hold on; title('Yeni histogram');

%===== G�r�lt� giderme =====
% sun = noise(s);

%===== Kenar keskinle�tirme =====
% sknr = kenar(skg);
 
%===== IHS g�r�nt�s� =====
% shsv = rgb2hsv(s1);

%===== Bulan�kl�k etkisi =====
% blur = blurMetric(s1);

%===== G�r�nt� da��l�m grafi�i =====
% image_scatter(s);
% display('Bitti!...');

%===== NVDI =====
% ndvi(sd);