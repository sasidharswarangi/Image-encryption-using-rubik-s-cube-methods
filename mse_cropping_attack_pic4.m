% MSE between original images and the decrypted versions under cropping attack
%side cropping
ref = imread('input/pic4.png');
imshow(ref)
A = imread('decrypted_images/pic4_cropped_side.png');
figure
imshow(A)
err = immse(A, ref);
fprintf('\n The mean-squared error is %0.4f\n', err);

%The mean-squared error is 4265.6183(output)