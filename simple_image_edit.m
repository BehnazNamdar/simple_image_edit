function simple_image_edit(pic)
%  This function read a color image from your MATLAB current directory
%  (copy an image before running there),
%   then convert color image to gray and preview both  by subplot beside each other
%   3-  resize gray scale  image to specific size (100*100) preview both  by subplot beside each other.
%   4- save you resized image in current directory  


% read a color image from my current dir

figure(1);
imageFromMyPc = imread(pic);

%'/Users/behnaz/Documents/cognitive science/semester02/آزمایشگاه/session 4/Apple-watch-HR-main.jpeg'

% convert the color image to grayscle one
grayImage = rgb2gray(imageFromMyPc);

% preview both above images in a subplot
subplot(1,2,1);
imshow(imageFromMyPc);
title('This is a photo from my pc');
subplot(1,2,2);
imshow(grayImage);
title('this a gray edition of the besides photo');

% resize gray image to 100*100
figure(2);

resizedGrayImage = imresize(grayImage,[100 100]) ;

% preview both above images in a subplot

subplot(1,2,1);
imshow(grayImage);

subplot(1,2,2);
imshow(resizedGrayImage);

% show resized image in current folder

imwrite(resizedGrayImage, 'myPhoto.jpg');
end

