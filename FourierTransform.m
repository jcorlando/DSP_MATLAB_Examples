clc
clear all
close all

% fourier transform of signals
n = -1:1:1;
x = [1 1 1];
% x = ((1/2).^abs(n)).*(cos(pi*(n-1)/8));
omega = -pi:(pi/1000):pi;
N = length(x);
X = exp(-j*omega'*n)*(x');


subplot(2, 2, [1,2])                    % This is a plot of the original signal
stem(n, x, 'b');                        % This is a plot of the original signal
xlabel('n')
ylabel('x[n]')
title('x[n]')

subplot(2, 2, 3)                        % This is the magnitude plot
plot( (omega/pi), abs(X), 'r' );        % This is the magnitude plot
title('Magnitude response')
xlabel('w/pi')
ylabel('|X(e^jw)|')

subplot(2, 2, 4)                        % This is the phase plot
plot((omega/pi), angle(X), 'g' );       % This is the phase plot
title('Phase response')
xlabel('w/pi')
ylabel('<X(e^jw)')