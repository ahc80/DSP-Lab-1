p[rawaudio, Fs] = audioread('music.au');
sound(rawaudio, Fs);
s
F1audio = Filter1(rawaudio);
%sharper audio compared to original

F2audio = Filter2(rawaudio);
%softer audio compared to original