%% Unit Impulse Input

% initialize input vector

n = (0:100);

% delta function test input

delta = @(n) 1.0 * (n==0);

% converting into an array input

delta_n = arrayfun(delta, n);

% impulse response test

h1 = system1(delta_n);
h2 = system2(delta_n);
h3 = system3(delta_n);

%% plotting system1

figure
stem(n, h1, 'filled'); 
grid on
title('System1 Impulse Response');
xlabel('n');
ylabel("h[n]");

%% plotting system2

figure
stem(n, h2, 'filled'); 
grid on
title('System1 Impulse Response');
xlabel('n');
ylabel("h[n]");

%% plotting system3

figure
stem(n, h3, 'filled'); 
grid on
title('System1 Impulse Response');
xlabel('n');
ylabel("h[n]");

%% Time shifted unit impulse

n = (0:100);

%time shifted delta function

delta_ts = @(n) 1.0 * (n==5);

% converting into an array input

delta_ts_n = arrayfun(delta_ts, n);

% impulse response test

h1_ts = system1(delta_ts_n);
h2_ts = system2(delta_ts_n);
h3_ts = system3(delta_ts_n);

%% plotting system1

figure
stem(n, h1_ts, 'filled'); 
grid on
title('System1 Impulse Response');
xlabel('n');
ylabel("h[n]");

%% plotting system2

figure
stem(n, h2_ts, 'filled'); 
grid on
title('System1 Impulse Response');
xlabel('n');
ylabel("h[n]");

%% plotting system3

figure
stem(n, h3_ts, 'filled'); 
grid on
title('System1 Impulse Response');
xlabel('n');
ylabel("h[n]");

%% System response Comparison

% plotting input:
figure;

subplot(2,1,1)
stem(n, delta, 'filled');
grid on
title('Impulse');
xlabel('n');
ylabel("delta[n]");

subplot(2,1,1)
stem(n, delta_ts, 'filled');
grid on
title('Shifted Impulse');
xlabel('n');
ylabel("delta[n]");

% plotting system1

figure;

subplot(3,2,1);
stem(n, h1, 'filled'); 
grid on
title('System1 Impulse Response');
xlabel('n');
ylabel("h[n]");

% plotting system2

subplot(3,2,3);
stem(n, h2, 'filled'); 
grid on
title('System2 Impulse Response');
xlabel('n');
ylabel("h[n]");

% plotting system3

subplot(3,2,5);
stem(n, h3, 'filled'); 
grid on
title('System3 Impulse Response');
xlabel('n');
ylabel("h[n]");

% plotting system1 time shifted input

subplot(3,2,2);
stem(n, h1_ts, 'filled'); 
grid on
title('System1 Time-Shifted Impulse Response');
xlabel('n');
ylabel("h[n]");

% plotting system2 time shifted input

subplot(3,2,4);
stem(n, h2_ts, 'filled'); 
grid on
title('System2 Time-Shifted Impulse Response');
xlabel('n');
ylabel("h[n]");

% plotting system3 time shifted input

subplot(3,2,6);
stem(n, h3_ts, 'filled'); 
grid on
title('System3 Time-Shifted Impulse Response');
xlabel('n');
ylabel("h[n]");


