%Setting Parameters
Ts = 1; % Secs
fc = 0.45; %Hertz
fs = 1/Ts; %Hertz
N = 20; %Sampling
f = -1:.001:1; % Frequency range

%Fourier transform
P = Ts * abs(sinc(f./fs));

%Butterworth
Hb = 1./(1+(f./fc).^N);

%Without Sample and Hold
Hb_without = (Hb.^2);

%Final Expression
Hb_with = (Hb.^2).*abs(sinc(f./fs));

%Plot without Sample and Hold 
plot(f,Hb_without)
title ('Magnitude with Sample')
xlabel('Frequency')
ylabel ('Magnitude')
figure

%Plot with Sample and Hold
plot(f,Hb_with)
title ('Magnitude without Sample')
xlabel('Frequency')
ylabel ('Magnitude')
figure