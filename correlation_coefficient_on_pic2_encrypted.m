RGB = imread('encrypted_images/pic2.png');
imshow(RGB)
P = rgb2gray(RGB);
figure
imshow(P)
%vertical
x1 = double(P(:,1:end-1));
y1 = double(P(:,2:end));
randIndex1 = randperm(numel(x1));
randIndex1 = randIndex1(1:3000);
x = x1(randIndex1);
y = y1(randIndex1);
r_xy = corrcoef(x,y);
scatter(x,y);
xlabel('Pixel gray value on location (x,y)')
ylabel('Pixel gray value on location (x+1,y)')

Ex=(1/(1000))*sum(x);
Ey=(1/(1000))*sum(y);
        Dx=(1/(1000))*sum((x(:)-Ex).^2);
        Dy=(1/(1000))*sum((y(:)-Ey).^2);
        coxy=(1/(1000))*(sum((x-Ex).*(y-Ey)));
rxy=coxy/(sqrt(Dx*Dy));
fprintf('\n The correlation coefficient horizontal is %0.4f\n', rxy);

%vertical
x1 = double(P(1:end-1,:)); 
y1 = double(P(2:end,:)); 
randIndex1 = randperm(numel(x1));
randIndex1 = randIndex1(1:3000);
x = x1(randIndex1);
y = y1(randIndex1);
r_xy = corrcoef(x,y);
figure
scatter(x,y);
xlabel('Pixel gray value on location (x,y)')
ylabel('Pixel gray value on location (x,y+1)')

Ex=(1/(1000))*sum(x);
Ey=(1/(1000))*sum(y);
        Dx=(1/(1000))*sum((x(:)-Ex).^2);
        Dy=(1/(1000))*sum((y(:)-Ey).^2);
        coxy=(1/(1000))*(sum((x-Ex).*(y-Ey)));
rxy=coxy/(sqrt(Dx*Dy));
fprintf('\n The correlation coefficient vertical is %0.4f\n', rxy);

%diagonal
x1 = double(P(1:end-1,1:end-1,1)); 
y1 = double(P(2:end,2:end,1)); 
randIndex1 = randperm(numel(x1));
randIndex1 = randIndex1(1:3000);
x = x1(randIndex1);
y = y1(randIndex1);
r_xy = corrcoef(x,y);
figure
scatter(x,y);
xlabel('Pixel gray value on location (x,y)')
ylabel('Pixel gray value on location (x+1,y+1)')

Ex=(1/(1000))*sum(x);
Ey=(1/(1000))*sum(y);
        Dx=(1/(1000))*sum((x(:)-Ex).^2);
        Dy=(1/(1000))*sum((y(:)-Ey).^2);
        coxy=(1/(1000))*(sum((x-Ex).*(y-Ey)));
rxy=coxy/(sqrt(Dx*Dy));
fprintf('\n The correlation coefficient diagonal is %0.4f\n', rxy);


