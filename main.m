hid_pic=imread('spaceship.png');
newImage = imread('think.png');
% hid_pic=imread('image.png');
% newImage = imread('think.png');
bit = 6;
binaryImage = imresize(newImage,size(hid_pic(:,:,1)));

%%code
new = code(hid_pic,binaryImage,bit);
%%decode
decoded = decode(new,bit);


subplot(2,2,1);imshow(hid_pic, []);caption = "Original Image";
title(caption, 'FontSize', 13);
subplot(2,2,2);imshow(binaryImage, []);title('Embeded Image', 'FontSize', 13);


subplot(2,2,3);imshow(new, []);
caption = sprintf('Watermarked with %d bit',bit);title(caption, 'FontSize', 13); 
subplot(2,2,4);imshow(decoded, []);
caption = sprintf('recoverd image with %d bit',bit);title(caption, 'FontSize', 13); 

