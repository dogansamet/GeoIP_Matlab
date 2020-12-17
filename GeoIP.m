clear; clc; %close all;

%===== Görüntü yükleme =====
[s sd] = load_im;

%===== Boyutlar =====
[R C B] = size(sd);

%===== Band(lar)a ayýrma =====
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

%===== Döndürme =====
rotate(s);

%===== Boyut küçültme =====
sr = resizing(s1);

%===== Kontrast geniþletme =====
% skg = kg(s, s1);

%===== Histogram eþitleme =====
% she = histeq(s1);
% figure; imshow(she); hold on; title('Histogram eþitlemeli görüntü');
% figure; imhist(she); hold on; title('Yeni histogram');

%===== Gürültü giderme =====
% sun = noise(s);

%===== Kenar keskinleþtirme =====
% sknr = kenar(skg);
 
%===== IHS görüntüsü =====
% shsv = rgb2hsv(s1);

%===== Bulanýklýk etkisi =====
% blur = blurMetric(s1);

%===== Görüntü daðýlým grafiði =====
% image_scatter(s);
% display('Bitti!...');

%===== NVDI =====
% ndvi(sd);