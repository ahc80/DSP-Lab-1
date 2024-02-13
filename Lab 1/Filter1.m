% Function to implement filter S1
function y = Filter1(x)
    N = length(x);
    y = zeros(1, N);
    for n = 2:N
        y(n) = x(n) - x(n-1);
    end
end
