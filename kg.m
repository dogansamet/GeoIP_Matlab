% Kontrast geni�letme
% Kaynak: Digital Photogrammetry, Vol. 1, Toni Schenk, syf: 50

function s2 = kg (s, s1)

figure; imhist(s(:,:,1));
hold on; title('�lk histogram');

figure; imshow(s1);
hold on; title('�lk g�r�nt�');

fprintf('En k���k gri de�er: %3d \n', min(min(s(:,:,1))))
fprintf('En b�y�k gri de�er: %3d \n', max(max(s(:,:,1))))

hdfmax = 255;% input('Yeni g�r�nt� i�in en b�y�k gri de�er: ');
hdfmin = 0;%input('Yeni g�r�nt� i�in en k���k gri de�er: ');

t1 = hdfmin - min(min(s1));

t2 = (hdfmax - hdfmin) / (max(max(s1)) - min(min(s1)));

% Do�rusal kontrast geni�letme
s2 = (s1 + t1) * t2;

s2 = uint8(s2 - 1);

figure; imhist(s2);
hold on; title('Do�rusal kontrast geni�letilmi� histogram');

figure; imshow(s2);
hold on; title('Do�rusal kontrast geni�letilmi� g�r�nt�');

fprintf('En k���k gri de�er %3d \n', min(min(s2)))
fprintf('En b�y�k gri de�er %3d \n', max(max(s2)))  

disp('Bitti!')


