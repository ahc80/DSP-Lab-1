figure;
n = linspace(0, 2*pi, 50);
x = sin(n);
subplot(2, 3, 2);
stem(n, x);
title('Input Signal Sinusoid');

a=system1(3*x);
subplot(2, 3, 4);
stem(n, a);
title('System 1 Output');

b=system2(3*x);
subplot(2, 3, 5);
stem(n, b);
title('System 2 Output');

c=system3(3*x);
subplot(2, 3, 6);
stem(n, c);
title('System 3 Output');