%% 3.4 Difference Equations

b1 = [1, -1];   % Filter 1: Input Side Coefficients 

a1 = 1;     % Filter 1: Output Side Coefficients

b2 = 1;     % Filter 2: Input Side Coefficients

a2 = [1, -0.5];     % Filter 2: Output Side Coefficients


% initialize input vector

n = (0:19);

% delta function

delta = @(n) 1.0 * (n==0);

% Filter Implementation:

y = zeros(size(n));

% Impulse Responses

% Impulse response S1
h1 = filter(b1,a1, delta(n));

% Impulse response S2
h2 = filter(b2, a2, delta(n));

% impulse response S1(S2)

h1_2 = filter(b1, a1, h2);

% impulse response S2(S1)

h2_1 = filter(b2, a2, h1);

% S1 + S2 impulse response

h1_h2 = h1 + h2;
%% S1 (filter 1) Impulse Response

figure
stem(n, h1, 'filled'); 
grid on
title('S1 Impulse Response');
xlabel('n');
ylabel("h[n]");

%% S2 (filter 2) Impulse Response

figure
stem(n, h2, 'filled');
grid on
title('S2 Impulse Response');
xlabel('n');
ylabel("h[n]");

%% S1(S2) (filter 1) 

figure
stem(n, h1_2, 'filled');
grid on
title('S1(S2) Impulse Response');
xlabel("n");
ylabel("h[n]");

%% S2(S1) (filter 2)

figure
stem(n, h2_1, 'filled');
grid on
title('S2(S1) Impulse Response');
xlabel("n");
ylabel("h[n]");

%% S1 + S2

figure
stem(n, h1_h2, "filled");
grid on
title('S2 + S1 Impulse Response');
xlabel("n");
ylabel("h[n]");


