% Histogram analysis

clear all; clc; 

[FileName PathName] = uigetfile('*.*','Image File');
img = imread([PathName FileName]);
sz = size(img,3);
info = imfinfo([PathName FileName]);
sname = sprintf('Image: %2.0f Bit (Between 0 to %4.0f)',info.BitDepth/sz,(2^(info.BitDepth/sz))-1);
disp(sname)
    for j = 1 : sz
        if j == 1 
        if 1 < sz
            nm = 'Red';
        elseif sz == 1
            nm = 'Panchromatic';
        end
        elseif j == 2
            nm = 'Green';
        elseif j == 3
            nm = 'Blue';
        elseif j == 4
            nm = 'NIR';
        end
    sname1 = sprintf('Result for %5s band >> Max (Gray value): %4.0f (%2.0f bit) ' ,nm ,max(max(img(:,:,j))) ,round(log(double(max(max(img(:,:,j))))+1) /log(2)));
    disp(sname1)
    end
range = input('Range of gray value: ');
% font_size = input('Font size on figure: ');
font_size = 25;

for i = 1 : sz
if i == 1 
    if 1 < sz
        nm = 'Red';
    elseif sz == 1
        nm = 'Panchromatic';
    end
elseif i == 2
    nm = 'Green';
elseif i == 3
    nm = 'Blue';
elseif i == 4
    nm = 'NIR';
end

mx = max(max(img(:,:,i)));
m = double(mx);

figure('Name',nm)
hold on
xlim([0 range])
[counts,binLocations]= imhist(img(:,:,i),m);
area(binLocations,counts,'FaceColor',[0 0 0])
set(gca,'FontSize',font_size);
ylim auto
end
