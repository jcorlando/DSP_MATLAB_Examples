clc
clear all
close all

%  My MATLAB script for a Discrete unit sample Delta Function d[n]
% n = -20:40;  % Range of the signal
% delta = zeros(1, length(n));
% delta(n==0) = 1;
% stem(n, delta)
% title('Unit Sample')


%  My MATLAB script for a Discrete Unit StepFunction u[n]
% n = -20:40;  % Range of the signal
% un = zeros(1, length(n));
% un(n>=0) = 1;
% stem(n, un)
% title('Unit Step')


% %  My MATLAB script for a Discrete Real Exponential Signal x2
% n = -20:40;  % Range of the signal
% x2n = 0.8.^n;
% stem(n, x2n)
% title('Real Exponential Signal')


%  My MATLAB script for a Discrete Complex Exponential Signal
% n = -20:40;  % Range of the signal
% x3n = (0.9*exp((j*pi)/10)).^n;  % original signal
% x3n_r = real(x3n);
% x3n_i = imag(x3n);
% x3n_m = abs(x3n);
% x3n_p = angle(x3n);
% subplot(2, 2, 1)
% stem(n, x3n_r)
% title('Real Part')
% subplot(2, 2, 2)
% stem(n, x3n_i)
% title('Imaginary Part')
% subplot(2, 2, 3)
% stem(n, x3n_m)
% title('Magnitutde Part')
% subplot(2, 2, 4)
% stem(n, x3n_p)
% title('Phase Part')


%  My MATLAB script for a Sinusoidal Sequence
% n = -20:40;  % Range of the signal
% x4n = 2*cos(2*pi*0.3*n + pi/3);
% stem(n, x4n)
% title('Sinusoidal Sequence')




