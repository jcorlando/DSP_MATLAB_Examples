clc
clear all
close all

% fft example
n = [-49:1:50];
x = ((1/2).^abs(n)).*(cos(pi*(n-1)/8));
omega = linspace(-pi, pi, 60);
N = length(x);

% Analysis Formula
% Find the Fourier Transform of signal "for discrete series divide by /N" 
% c = fft(x)/N;
% Synthesis Formula
% This is to find the inverse Fourier Transform "for discrete series multiply by *N"
% x = ifft(c)*N;


subplot(2, 2, [1,2])        % This is a plot of the original signal
stem(n, x, 'b');            % This is a plot of the original signal
subplot(2, 2, 3)            % This is the magnitude plot
plot(abs(c), 'r' );         % This is the magnitude plot
subplot(2, 2, 4)            % This is the phase plot
plot(angle(c), 'g' );       % This is the phase plot
% stem(n, c);                 % This is to plot the DTFS

