[rawaudio, Fs] = audioread('music.au');
sound(rawaudio, Fs);

b1 = [1, -1];   % Filter 1: Input Side Coefficients 

a1 = 1;     % Filter 1: Output Side Coefficients

b2 = 1;     % Filter 2: Input Side Coefficients

a2 = [1, -0.5];     % Filter 2: Output Side Coefficients

F1audio = filter(a1, b1, rawaudio);
F2audio = filter(a2, b2, rawaudio);