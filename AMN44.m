clc;
clear all;
close all;

B=imread('C:\Users\admin\Downloads\flower.jpg');
figure, imshow(B);

imwrite(B,'C:\Users\admin\Desktop\IMAGE PROCESSING\flower.jpg');
imshow(B);

B=imread('flower.jpg');
A=rgb2gray(B);
imshow(A);

i1=imadjust(A);
figure,imshow(i1);
title('histrogram stretched image');
figure,imhist(i1);
title('histrogram stretched');

i2=histeq(i1);
figure,imshow(i2);
title('histrogram equilished image');
figure,imhist(i2);







