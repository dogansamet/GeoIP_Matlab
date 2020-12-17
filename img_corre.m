%Estimation of image correlation

function img_corre(sd)

band_1 = input('Band 1: ');
band_2 = input('Band 2: ');

corr = corrcoef(sd(: , : , band_1) , sd(: , : , band_2));

fprintf('Correlation: %4f \n', corr(1 , 2));