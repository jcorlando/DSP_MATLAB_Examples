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
% n = 0:100;
% x = 2*cos(((pi/2).*n) + pi/3);
% y = filter([0.19], [1 0 0.81], x);
% stem(x, 'filled');
% hold on;
% stem(y, 'filled');
% title('Input x[n] Blue and Steady State Response y[n] Orange');


% Problem # 6 Part (b)
% n = -pi:pi/1000:pi;
% b = [1 6 15 20 15 6 1]; %numerator coefficient of transfer function H(z)=[(1+z^-1)/2]^6
% a = [64];               %denominator coefficient of transfer function H(z)
% [h,w] = freqz(b, a, n);
% plot(w/pi, unwrap(angle(h)));
% title('phase plot of H(z)=[(1+Z^{-1})/2]^6');


% Problem # 18 Part (a)
% n = -pi:pi/1000:pi;
% b = [2 0 3.125];
% a = [1 -0.9 0.81];
% [h, w] = freqz(b, a, n);
% subplot(1, 2, 1);
% plot( w/pi, (abs(h)) );
% title('Magnitude Response of H(z)');
% subplot(1, 2, 2);
% plot( w/pi, unwrap(angle(h)) );
% title('Phase Response of H(z)');


% Problem # 18 Part (b)
n = -pi:pi/1000:pi;
b = [3.125 0 2];
a = [1 -0.9 0.81];
[h, w] = freqz(b, a, n);
subplot(1, 2, 1);
plot( w/pi, (abs(h)) );
title('Magnitude Response of H_m_i_n(z)');
subplot(1, 2, 2);
plot( w/pi, unwrap(angle(h)) );
title('Phase Response of H_m_i_n(z)');







