%Plotting image scatter graph in 2D or 3D

function image_scatter(s)

dimension = input('Dimension (2 or 3): ');
if (dimension < 2) | (dimension > 3)
   error('Attention! Dimension must be 2 or 3. ')
end

band_1 = input('Band 1: ');
band_2 = input('Band 2: ');
if dimension == 3    
    band_3 = input('Band 3: ');
end
s1 = reshape(s(: , : , band_1), [] , 1);
s2 = reshape(s(: , : , band_2), [] , 1);
if dimension == 3
    s3 = reshape(s(: , : , band_3), [] , 1);
end

figure
box on
set(gca,'DataAspectRatio',[1 1 1]);

if dimension == 2
    scatter(s1 , s2 , '.')
    xlabel('Band 1','FontSize',16);
    ylabel('Band 2','FontSize',16);
else
    scatter3(s1 , s2 , s3 , '.')
    xlabel('Band 1','FontSize',16);
    ylabel('Band 2','FontSize',16);
    zlabel('Band 3','FontSize',16);
end

