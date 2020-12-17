%bu program tarafimdan yazilmistir(Mustafa Ozendi)
clc
clear all;
image = imread('DSCF0140.jpg');
image = rgb2gray(image);
image = double(image);
image1 = conv2(image,[0.05, 0.25, 0.4, 0.25, 0.05],'same');
image2 = conv2(image1,[0.05; 0.25; 0.4; 0.25; 0.05],'same');
imagesc(image2); colormap('gray');
edges = edge(image2, 'sobel',14);
[r c] = find(edges);
figure
imagesc(image); colormap('gray');
hold on
for i = 1:length(r)
    plot(c(i), r(i), 'w', 'LineWidth', 1)
    i
end
    