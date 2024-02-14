% Function to implement filter from eq 3.5
function y = Filter35(x)
    N = length(x);
    y = zeros(1, N);
    y(1) = 1/3*(x(1));
    y(2) = y(1) + 1/3*(x(2));
    y(3) = y(2) + 1/3*(x(3));
    for n = 4:N
        y(n) = x(n-1) + 1/3*(x(n)-x(n-3));
    end
end