RGB = imread('input/pic2.png');
imshow(RGB)
P = rgb2gray(RGB);
%Calculate Entropy of Grayscale Original Image

J = entropy(P)
%output:  6.8049


RGB = imread('encrypted_images/pic2.png');
figure
imshow(RGB)
P = rgb2gray(RGB);

%Calculate Entropy of Grayscale Encrypted Image
J = entropy(P)

%output: 7.9032