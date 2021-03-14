clc
clear all
close all


% Problem #2 part b
n = linspace(-pi, pi);
[h,w] = freqz( [0.19], [1 0 0.81], n );
plot(w/pi, h);
title('Magnitude Plot with |b| = 0.19');


% Problem #2 part c
% n = linspace(-pi, pi);
% [h,w] = freqz( [0.19], [1 0 0.81], n );
% subplot(1, 2, 1);
% plot(w/pi, w);
% title('');
% subplot(1, 2, 1);
% plot(w/pi, unwrap(w));
% title('');







