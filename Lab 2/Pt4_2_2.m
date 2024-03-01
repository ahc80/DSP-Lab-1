%%4.2.2

N = 1024; %%Convention Number to be efficient
dw = 2*pi/N;
w = -pi:dw:pi; % Frequency range from -pi to pi
s = exp(1i*w); % Complex sinusoids for the frequency response

num = [0.3, 0.24]; % Numerator coefficients of H(z)
den = [1, -0.9]; % Denominator coefficients of H(z)

% Compute the frequency response
figure
freqz(num, den, w);
