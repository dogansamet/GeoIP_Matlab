% AUTOCONTRAST  Automatically adjusts contrast of images to optimum level.
%    e.g. autocontrast('Sunset.jpg','Output.jpg')

function output_img = autocontrast(img)

low_limit=0.001;
up_limit=0.999;
%img=imread(input_img);
[m1 n1 r1]=size(img);
img=double(img);
%--------------------calculation of vmin and vmax----------------------
for k=1:r1
    arr=sort(reshape(img(:,:,k),m1*n1,1));
    v_min(k)=arr(ceil(low_limit*m1*n1));
    v_max(k)=arr(ceil(up_limit*m1*n1));
end
%----------------------------------------------------------------------
if r1==3
    v_min=rgb2ntsc(v_min);
    v_max=rgb2ntsc(v_max);
end
%----------------------------------------------------------------------
output_img=(img-v_min(1))/(v_max(1)-v_min(1));
%imwrite(uint8(img.*255),output_img);