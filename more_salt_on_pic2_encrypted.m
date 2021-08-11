I = imread('encrypted_images/pic2.png');
N=imnoise(I,'salt & pepper', 0.1);
imshow(N) 