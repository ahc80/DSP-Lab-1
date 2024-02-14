% Function to implement filter S3
function y = SystemS3(x)
    y = zeros(1, length(x));
    y(1) = x(1);
    for n = 2:length(x)  % Start at 2 because we reference n-1
        y(n) = x(n) - 0.5*x(n-1);
    end
end