clc;
clear all;
close all;

A=imread('C:\Users\admin\Downloads\flower.jpg');
figure, imshow(A);

imwrite(B,'C:\Users\admin\Desktop\IMAGE PROCESSING\flower.jpg');
imshow(B);

B=imread('flower.jpg');
figure,imshow(B);
title('original image');
s=size(B);
H=zeros(1,s(1));
for i=1:s(1);
    for j=1:s(2);
        H(1,B(i,j))=H(1,B(i,j))+1;
    end
end
figure,stem(H);
ylim([0 10]);
xlim([0 100]);
title('histogram')
