% Function to implement filter S2
function y = Filter2(x)
    N = length(x);
    y = zeros(1, N);
    for n = 2:N
        y(n) = 0.5 * y(n-1) + x(n);
    end
end