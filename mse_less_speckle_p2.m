ref = imread('input/pic2.png');
imshow(ref)
A = imread('less_speckle_noise_on_p2_encrypted_decrypted.bmp');
imshow(A)
err = immse(A, ref);
fprintf('\n The mean-squared error is %0.4f\n', err);

%The mean-squared error is 4291.5518(output)