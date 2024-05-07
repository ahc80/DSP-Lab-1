house_img = imread('house.tif');

% Call the custom histogram function
Hist(house_img);

% You might also want to save the figure
% saveas(gcf, 'image_histogram.png');

function Hist(A)
    % Reshape the image matrix A into a 1D array
    A = A(:);
    
    % Plot the histogram of the pixel values
    histogram(A, 0:255, 'FaceColor', 'blue');
    
    % Label the axes
    xlabel('Pixel Intensity');
    ylabel('Number of Pixels');
    
    % Give the histogram a title
    title('Histogram of the 8-bit image');
end

