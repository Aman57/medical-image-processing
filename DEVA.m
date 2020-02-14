clc;
close all;
clear all; warning off;


%original image
i=imread('pout.tif');
subplot(3,1,1)
imhist(i);
title('Histogram of original good contrast image');
ylim([0 5000]);

%generating dark image
i1=0.4.*i;
subplot(3,1,2)
imhist(i1);
title('dark image histogram');
ylim([0 5000]);


%generating bright image
i2=2.*i;   
subplot(3,1,3)
imhist(i2);
title('bright image histogram');
ylim([0 5000]);

figure, imshow(i), title('original image');
figure, imshow(i1), title('dark image');
figure, imshow(i2), title('bright image');

%%
clc;
close all;
clear all; warning off;


%original image
i=imread('pout.tif');
figure, imhist(i);
title(' original histogram');
subplot(3,1,1)
%histogram stretching
i3=imadjust(i);
figure, imhist(i3);
title('histogram stretched');
subplot(3,1,2)

%histogram equilisation
i4=histeq(i); 

figure, imhist(i4);
title('equilised histogram');
subplot(3,1,3)

figure, imshow(i), title('original histogram');
figure, imshow(i3), title('histogram stretched');
figure, imshow(i4), title('equilised histogram');

%% 
clc; clear all; close all;

a=imread('pout.tif');
figure,imshow(a);
title('original image');

s=size(a);
H=zeros(1, s(1));

for i=1:s(1);
    for j=1:s(2);
        H(1,a(i,j))=H(1,a(i,j))+1;
    end
end
figure, stem(H);
title('Histogram');
  

