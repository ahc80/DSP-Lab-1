% Read the 8-bit monochrome image into a matrix
A = imread('yacht.tif');

% Display the image
figure, imshow(A), title('Original Image');

% Convert the image to double for processing
B = double(A);

% Horizontal flip: reverse the order of columns
horizontally_flipped = fliplr(B);
figure, imshow(horizontally_flipped, []), title('Horizontally Flipped Image');

% Vertical flip: reverse the order of rows
vertically_flipped = flipud(B);
figure, imshow(vertically_flipped, []), title('Vertically Flipped Image');

% Negative image: subtract each pixel from 255
negative_image = 255 - B;
figure, imshow(negative_image, []), title('Negative Image');

% Multiply each pixel of the original image by 1.5
% Clip the result to the range [0, 255] to ensure it's still an 8-bit value
brightened_image = min(B * 1.5, 255);
figure, imshow(brightened_image, []), title('Brightened Image (1.5x)');
