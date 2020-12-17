% Estimation RVI and NVDI
% Schowengerdt, R.A., 2007. Remote sensing: models and methods for image processing. Academic press.

function ndvi(sd)

R   = sd(: , : , 1);
NIR = sd(: , : , 4);

rvi  = NIR ./ R;
ndvi = (NIR - R) ./ (NIR + R);

figure
imshow(rvi,'DisplayRange',[-1 1])
title('Ratio Vegetation Index')

figure
imshow(ndvi,'DisplayRange',[-1 1])
title('Normalized Difference Vegetation Index')

thr = input('Treshold: ');

delta = (ndvi > thr);

figure;
imshow(delta)
title('NDVI with threshold applied')