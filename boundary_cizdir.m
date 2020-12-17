% bu program tarafimdan yazilmistir (Mustafa Ozendi)
clc
clear all
image = imread('giris.jpg');
Black_w = im2bw(image, graythresh(image));
[bound_coords,L] = bwboundaries(Black_w);
imshow(image);
hold on
for i = 1:length(bound_coords)
    boundary = bound_coords{i};
    plot(boundary(:,2), boundary(:,1), 'r', 'LineWidth', 1)
end