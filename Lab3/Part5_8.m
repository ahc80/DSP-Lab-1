%5.8
%Audio read the song
[raw_song, Fs] = audioread('music.au');
sound(raw_song, Fs);  % Play back at original sampling rate

pause(20)

%sig1
sig1 = raw_song(1:2:end); % Decimate by 2
sound(sig1);

pause(10)

%sig2
rads_cutoff = pi/2;
impulse = fir1(20,rads_cutoff/pi); %Length 20 low-pass filter with pi/2 cutoff frequency
sig2_filt = conv(raw_song,impulse); %Filter signal, raw_song is signal impulse is impulse response of desired filter

sig2 = sig2_filt(1:2:end);
sound(sig2)