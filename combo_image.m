%This function combines bands into one image
%Derived by Hüseyin Topan, March 2018, BEÜ, Zonguldak (htopan@yahoo.com)

function combo_image

clear; clc;

n_band = input('#Bands (3 or 4): ');

if n_band == 3
    display('Visible')
else
    display('Visible and NIR')
end

if n_band == 3
    display('Select red band')
    [FileName PathName] = uigetfile('*.*');
    s(: , : , 1) = imread([PathName FileName]);
    display('Select green band')
    [FileName PathName] = uigetfile('*.*');
    s(: , : , 2) = imread([PathName FileName]);
    display('Select blue band')
    [FileName PathName] = uigetfile('*.*');
    s(: , : , 3) = imread([PathName FileName]);
elseif n_band == 4
    [FileName PathName] = uigetfile('*.*');
    s(: , : , 4) = imread([PathName FileName]);
end

s16 = uint16(s);

imwrite(s16,'cikis_goruntu.tif','tiff','WriteMode','append');

