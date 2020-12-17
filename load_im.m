% Görüntü yükleme ve ön iþleme

function [s sd] = load_im

[FileName PathName] = uigetfile('*.*');
s = imread([PathName FileName]);

% s = autocontrast(s);
% s = imread('D:\Belgelerim\Sosyo\Foto\11_2011_Guz\RASAT\adiyamanGoksu01.jpg');
% s = imread('D:\1_Akademik\Lisansustu\Mustafa\foto_6.jpg');
% s = imread('DSCF0140.JPG');
% s = imread('800px-Unequalized_Hawkes_Bay_NZ.jpg');
% s = imread('bt.jpg');
% s = imread('f14_6bit_pixel_force.png');
% s = imread('4bit.jpg');
% s = imread('zku_merkez.jpg');
% s = imread('D:\3_Sosyo\Foto\Karisik_daimi\topan.jpg');
% s = imread('IMG-20151006-WA0008.jpg');
% s = imread('F:\1_Veriler\12_Gokturk\03_Bulent_Ecevit_unýversitesi\Sinanli_Zonguldak_Serit_4\L2\0\image.tif');

sd = im2double(s);
% s = double(s) + 1;