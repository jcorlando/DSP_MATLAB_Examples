clc;
clear all;
close all;


% Problem #1 part (b)
f=-50:1/1000:50;
X = 20.*pi./((10+j.*2.*pi.*f).^2+(20*pi)^2);
figure
subplot(2,1,1)
plot(f, abs(X))
grid on
title('Magnitude')

subplot(2,1,2)
plot(f, angle(X).*180./pi)
grid on
title('Phase')



% Problem #1 part (c)
% Fs=35;
% N=200;
% t=0:1/Fs:N/Fs-1/Fs;
% x=5.*exp(-10.*t).*sin(20.*pi.*t);
% 
% 
% X2=fft(x);
% X2 = abs(X2./N);
% 
% 
% f = Fs.*linspace(-1,1,N);
% plot(f,X2) 
% title('Single-Sided Amplitude Spectrum of X(t)')
% xlabel('f (Hz)')
% ylabel('|X(f)|')





