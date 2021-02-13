clc
clear all
close all

% fft example
n = [0:100];
% x = ( 3*sin( (((2*pi).*n)/7) + (pi/4) ) );
x = sin((pi.*n)/14);
stem(x);        %  This is to plot the signal and check if it is periodic
% N = length(x);
% c = fft(x)/N;
% subplot(1, 2, 1)
% stem(0:9, abs(c) );
% subplot(1, 2, 2)
% stem(0:9, angle(c) );

