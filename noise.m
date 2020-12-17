% Gürültü giderme

function sun = noise(s)

J = imnoise(s,'salt & pepper',0.02);
figure;imshow(J);

chc =input('Seçim: 1-> Ortalama, 2-> Medyan : ');

% (1) Averaging
% (2) Median

if chc == 1
    sun = filter2(fspecial('average',4),J)/255;
    sun = autocontrast(sun);
    figure; imshow(sun);
    hold on; title('Ortalama süzgeçlenmiþ görüntü');
elseif chc == 2
    sun = medfilt2(J,[3 3]);
    sun = autocontrast(sun);
    figure; imshow(sun);
    hold on; title('Medyan süzgeçlenmiþ görüntü');
end
end
