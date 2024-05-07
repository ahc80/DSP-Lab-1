% Read the image
input_image = imread('narrow.tif');

% Define T1 and T2 based on your specific needs
T1 = 70;
T2 = 180;

% Apply the pointwise transformation
output_image = pointTrans(input_image, T1, T2);

% Display the original and transformed images and their histograms
figure, imshow(input_image), title('Original Image');
figure, imhist(input_image), title('Histogram of Original Image');
figure, imshow(output_image), title('Transformed Image');
figure, imhist(output_image), title('Histogram of Transformed Image');

function output = pointTrans(input, T1, T2)
    % Allocate space for the output image.
    output = zeros(size(input));
    
    % Define the transformation function as a piecewise linear function.
    % For simplicity, we assume the input image is of class uint8 and the output is also expected to be uint8.
    output(input < T1) = 0;  % Set to black all pixels less than T1.
    output(input >= T2) = 255;  % Set to white all pixels greater than T2.
    
    % Apply linear transformation for pixel values between T1 and T2.
    mask = (input >= T1) & (input < T2);
    output(mask) = uint8(255 / (T2 - T1) * (double(input(mask)) - T1));
    
    % Convert the output image back to uint8 if needed.
    output = uint8(output);
end

