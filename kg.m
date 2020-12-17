% Kontrast geniþletme
% Kaynak: Digital Photogrammetry, Vol. 1, Toni Schenk, syf: 50

function s2 = kg (s, s1)

figure; imhist(s(:,:,1));
hold on; title('Ýlk histogram');

figure; imshow(s1);
hold on; title('Ýlk görüntü');

fprintf('En küçük gri deðer: %3d \n', min(min(s(:,:,1))))
fprintf('En büyük gri deðer: %3d \n', max(max(s(:,:,1))))

hdfmax = 255;% input('Yeni görüntü için en büyük gri deðer: ');
hdfmin = 0;%input('Yeni görüntü için en küçük gri deðer: ');

t1 = hdfmin - min(min(s1));

t2 = (hdfmax - hdfmin) / (max(max(s1)) - min(min(s1)));

% Doðrusal kontrast geniþletme
s2 = (s1 + t1) * t2;

s2 = uint8(s2 - 1);

figure; imhist(s2);
hold on; title('Doðrusal kontrast geniþletilmiþ histogram');

figure; imshow(s2);
hold on; title('Doðrusal kontrast geniþletilmiþ görüntü');

fprintf('En küçük gri deðer %3d \n', min(min(s2)))
fprintf('En büyük gri deðer %3d \n', max(max(s2)))  

disp('Bitti!')


