% Function to implement filter from eq 3.4
function y = Filter34(x)
    N = length(x);
    y = zeros(1, N);
    y(1) = 0.2*x(1);
    for n = 2:N
        y(n) = 0.8*x(n-1) + 0.2*x(n);
    end
end