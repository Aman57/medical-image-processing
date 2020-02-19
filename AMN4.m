clc;
clear all;
close all;

B=imread('C:\Users\admin\Downloads\flower.jpg');
figure, imshow(B);

imwrite(B,'C:\Users\admin\Desktop\IMAGE PROCESSING\flower.jpg');
imshow(B);
title('Original image')

B=imread('flower.jpg');
A=rgb2gray(B);
imshow(A);
title('Gray image')

subplot(3,1,1);
imhist(A);
title('histrogram of original good contrast image');

i1=.5.*A;
subplot(3,1,2);
imhist(i1),title('histogram of dark image ');

i2=5.*A;
subplot(3,1,3);
imhist(i2),title('histogram of bright image ');

figure, imshow(i1);
title('Dark image');
figure, imshow(i2);
title('Bright image');







