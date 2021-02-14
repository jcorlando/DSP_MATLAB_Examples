clc
clear all
close all

% fft example
% n = -1:1:1;
% x = [1 1 1];
% % x = ((1/2).^abs(n)).*(cos(pi*(n-1)/8));
% omega = -pi:(pi/1000):pi;
% N = length(x);
% X = exp(-j*omega'*n)*(x');

N=5;
n=0:N-1;                                %x1[n] has fandamental period 5
x=4*cos(1.2*pi*n+pi/3)+6*sin(0.4*pi*n-pi/6);
X=fft(x)./N;
xm1=abs(X);
xp1=angle(X);

figure(1);
subplot(2, 2, [1,2])                % This is a plot of the original signal
stem(n, x, 'b');                    % This is a plot of the original signal
xlabel('n')
ylabel('x[n]')
title('x[n]')
subplot(2, 2, 3);                       % This is a plot of the Magnitude
stem(n, xm1, 'g');                      % This is a plot of the Magnitude
title('plot of magnitude spectra of x_1[n]');
xlabel('K');
ylabel('|X_1(K)|');
xticks(n);
subplot(2, 2, 4);                           % This is a plot of the Phase
stem(n, xp1, 'r');                          % This is a plot of the Phase
title('plot of phase spectra of x_1[n]');
xlabel('K');
ylabel('\angleX_1(K)');
xticks(n);
ylim([-pi pi]);
yticks([-pi:pi/4:pi]);
yticklabels({'-\pi','-3\pi/4','-\pi/2','-\pi/4','0','\pi/4','\pi/2','3\pi/4','\pi'});

% Analysis Formula
% Find the Fourier Transform of signal "for discrete series divide by /N" 
% c = fft(x)/N;
% Synthesis Formula
% This is to find the inverse Fourier Transform "for discrete series multiply by *N"
% x = ifft(c)*N;
% stem(n, c);                 % This is to plot the DTFS


