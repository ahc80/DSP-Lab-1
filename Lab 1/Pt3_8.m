% Filter 3.4 from background:
% avgvalue(today) = 0.8 ∗ avgvalue(yesterday) + 0.2 ∗ (value(today))

% Filter 3.5 from background:
% avgvalue(today) = avgvalue(yesterday) + 1/3*(value(today)-(value(3 days ago))

load('stockrates.mat');

a = rate;

stockfilter1 = Filter34(rate);

stockfilter2 = Filter35(rate);

subplot(1, 3, 1);
stem(1:length(rate), a);
title('Original Rate Plot');

subplot(1, 3, 2);
stem(1:44, stockfilter1);
title('Rate Plot - Eq3.4');

subplot(1, 3, 3);
stem(1:44, stockfilter2);
title('Rate Plot - Eq3.5');
