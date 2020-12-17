function sknr = kenar(s)

disp('Kenar keskinleþtirme')
disp('Operatörler')
disp('Sobel             -> 1')
disp('Roberts           -> 2')
disp('Canny             -> 3')
disp('Laplacian of Gauss-> 4')
chc = input('Operatör: ');

if chc == 1
    sknr = edge(s, 'sobel');
elseif chc == 2
    sknr = edge(s, 'roberts');
elseif chc == 3
    sknr = edge(s, 'canny');
else
    sknr = edge(s, 'log');
end

figure;
imshow(sknr);
hold on
if chc == 1
    title ('Sobel Operatörü')
elseif chc == 2
    title ('Roberts Operatörü')
elseif chc == 3
    title ('Canny Operatörü')
else
    title ('Laplacian of Gauss Operatörü')
end
