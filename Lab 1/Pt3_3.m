%Hello this is a test 
%tesing
n = -10:20;

signal1 = (n == 0) - (n == 5);
signal2 = (n >= 0) - (n>=11);

T = length(n);

diff_signal1 = discrete_differentiator(signal1, T);
integ_signal1 = discrete_integrator(signal1, T);

diff_signal2 = discrete_differentiator(signal2, T);
integ_signal2 = discrete_integrator(signal2, T);

subplot(2,3,1);
stem(n, signal1);
title('Input Signal 1');
xlabel('n');
ylabel('Amplitude');

subplot(2,3,4);
stem(n, signal2);
title('Input Signal 2');
xlabel('n');
ylabel('Amplitude');

subplot(2,3,2);
stem(n, diff_signal1);
title('Differentiated Signal 1');
xlabel('n');
ylabel('Amplitude');

subplot(2,3,3);
stem(n, diff_signal2);
title('Differentiated Signal 2');
xlabel('n');
ylabel('Amplitude');

subplot(2,3,5);
stem(n, integ_signal1);
title('Integrated Signal 1');
xlabel('n');
ylabel('Amplitude');

subplot(2,3,6);
stem(n, integ_signal2);
title('Integrated Signal 2');
xlabel('n');
ylabel('Amplitude');