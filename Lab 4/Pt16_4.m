% Assuming you have an image file named 'dark.tif' in the current directory
input_image = imread('dark.tif');

% Specify the gamma value for your monitor
gamma_value = 2.2;

% Apply the gamma correction function
corrected_image = gammCorr(input_image, gamma_value);

% Display the original and gamma-corrected images
figure, imshow(input_image), title('Original Image');
figure, imshow(corrected_image), title('Gamma Corrected Image');

function B = gammCorr(A, gamma)
    % A is the input image, gamma is the display device's gamma value
    % B will be the gamma-corrected output image

    % First, normalize the pixel values of the input image to the range 0 to 1
    A = double(A) / 255;

    % Apply the gamma correction
    B = A .^ (1 / gamma);

    % Scale back to the full 8-bit range 0 to 255
    B = uint8(B * 255);
end
