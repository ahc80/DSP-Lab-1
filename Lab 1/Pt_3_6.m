%Delta is the impulse function
n = (-10:10);
delta = @(n) 1.0 * (n==0);

%Impulse of S3
sys3 = SystemS3(delta(n));
%Impulse of S3(S2)
sys32 = SystemS3(Filter2(delta(n)));

%Plot
subplot(1,2,1);
stem(n, sys3);
grid on;
title ('Impulse of S3')

subplot(1,2,2);
stem(n, sys32)
grid on;
title ('Impulse of S3(S2)')

