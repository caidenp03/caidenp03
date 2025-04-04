image = imread("coins.png");
subplot(3,2,1), imshow(image);
title('original image');
noisyimage = imnoise(image, 'salt & pepper');
subplot(3,2,2), imshow(noisyimage);
title('salt & pepper');
noisyimage2 = imnoise(image, 'gaussian');
subplot(3,2,3), imshow(noisyimage2);
title('gaussian');
cleanimage = medfilt2(noisyimage);
subplot(3,2,4), imshow(cleanimage);
title('clean 1');
cleanimage2 = wiener2(noisyimage2, [6 6]);
subplot(3,2,5), imshow(cleanimage2);
title('clean 2');
