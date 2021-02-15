clc
clear all
close all

% fourier transform of signals
% n = -1:1:1;
% n = 0:12;
n = 0:5000;
% x = [1 1 1];
% x = ((1/2).^abs(n)).*(cos(pi*(n-1)/8));
% x = [0.7501, -0.434, -0.1014, 0.2347, 0, -0.1192, -0.01131, 0.09508, 0, -0.06824, -0.0004103 0.05955, 0];
x = (-0.9).^(n);
omega = -pi:(pi/10000):pi;
X = exp(-j*omega'*n)*(x');


subplot(2, 2, [1,2])                            % This is a plot of the original signal
stem(n, x, 'b');                                % This is a plot of the original signal
xlabel('n')
ylabel('x[n]')
title('x[n]')

subplot(2, 2, 3)                                % This is the magnitude plot
plot( (omega/pi), abs(X), 'r' );                % This is the magnitude plot
title('Magnitude response')
xlabel('w/pi')
ylabel('|X(e^jw)|')

subplot(2, 2, 4)                                % This is the phase plot
plot((omega/pi), angle(X), 'g' );               % This is the phase plot
title('Phase response')
xlabel('w/pi')
ylabel('<X(e^jw)')





