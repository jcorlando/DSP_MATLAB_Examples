clc
clear all
close all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Use this to view the magnitude and phase response of a digital filter
% freqz([0.19], [1 0 0.81], n);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Problem #2 part b
% n = linspace(-pi, pi);
% [h, w] = freqz( [0.19], [1 0 0.81], n );
% plot( n/pi, abs(h) );
% title('Magnitude Plot with |b| = 0.19');


% Problem #2 part c
% n = linspace(-pi, pi, 200);
% [h, w] = freqz( [0.19], [1 0 0.81], n );
% plot( n/pi, angle(h), 'b' );
% title('Wrapped (Blue Line) and Unwrapped (Green dashes) Phase Response for part (b)');
% hold on
% plot( n/pi, unwrap(angle(h)), 'g--' );
% hold off


% Problem #2 part e
n = 0:100;
x = 2*cos(((pi/2).*n) + pi/3);
y = filter([0.19], [1 0 0.81], x);
stem(x, 'filled');
hold on;
stem(y, 'filled');
title('Input x[n] Blue and Steady State Response y[n] Orange');






