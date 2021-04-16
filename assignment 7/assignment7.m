clc;
clear all;
close all;

% Problem #1 part (b)
% f = -50:1/1000:50;   % Frequency from  -50Hz to 50Hz
% % CTFT of signal x_c(t)
% X = 100.*pi./((10+j.*2.*pi.*f).^2+(20*pi)^2);
% % CTFT of signal x_c(t)
% figure()
% subplot(2,1,1)
% plot(f, abs(X))
% grid on
% title('Magnitude')
% subplot(2,1,2)
% plot(f, angle(X).*180./pi)
% grid on
% title('Phase')

% Problem #1 part (c)
% % Sampling Frequency must be greater than or equal to 20
% % According to Nyquist Sampling Theorem
% % Sampling rate set to 100
% Fs = 100;
% T = 1/Fs;
% nT = 0:T:2;
% xn = 5*exp(-10*nT).*sin(20*pi*nT);
% X = fftshift(fft(xn));
% w = linspace(-pi, pi, length(nT));
% Xc_approx = T*X;
% 
% subplot(2, 1, 1)
% plot(w/T/2/pi, abs(Xc_approx))
% grid on
% title('Magnitude Response')
% subplot(2, 1, 2)
% plot(w/T/2/pi, angle(Xc_approx))
% grid on
% title('Phase Response')

% Problem #40
% a = 1;
% b = 2;
% c = 3;
% d = 4;
% x1 = [a, 0, b, c, 0, d, 0, 0];
% x2 = [d, 0, c, b, 0, a, 0, 0];
% X1 = fft(x1);
% X2 = fft(x2);
% N = 8;
% k = 0:N-1;
% subplot(1, 2, 1)
% stem(k, abs(X1), 'filled');
% hold on
% stem(k, abs(X2), 'color', 'red');
% xlabel('k')
% title('Magnitude Response')
% subplot(1, 2, 2)
% stem(k, angle(X1), 'filled');
% hold on
% stem(k, angle(X2), 'filled', 'color', 'red');
% xlabel('k')
% title('Phase Response')

% Problem #41 part (b)
% x1 = [-2 1 -3 -5 6 8];
% x2 = 1:4;
% N = 7;
% xn = circonv([x1 zeros(1,N-length(x1))]', [x2 zeros(1,N-length(x2))]')'

% Problem #41 part (c)
x1 = [-2, 1, -3, -5, 6, 8, 0];
x2 = [1, 2, 3, 4, 0, 0, 0];    % Append zeros to match length

x1 = fft(x1);   % DFT of x1
x2 = fft(x2);   % DFT of x2

y = x1.*x2;
y = ifft(y)



