function X = DTFT(x, n0, dw)
    N = length(x);
    X = zeros(1, N);
    w = -pi:dw:pi;
    j = sqrt(-1);
    for jdw = 1:length(w)
        X(jdw) = sum(x .* exp(-j*w(jdw) * ((1:N) + n0 -1)));
    end
end