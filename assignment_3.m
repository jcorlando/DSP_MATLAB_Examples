clc
clear all
close all

% fft example
n = [0:9];
x = [1, 1, 1, 0, 0, 0, 0, 0, 1, 1];
% x = sin( ((2*pi)*(3/10)).*n );
% stem(n, x);               % This is to plot the signal and check if it is periodic
N = length(x);
c = fft(x)/N;
stem(n, c);               % This is to plot the DTFS
subplot(1, 2, 1)
stem(n, abs(c) );
subplot(1, 2, 2)
stem(n, angle(c) );

