I = imread('encrypted_images/pic2.png');
N=imnoise(I,'speckle', 0.05);
imshow(N) 