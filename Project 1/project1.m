clc;
clear all;
close all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Part 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load('signal.mat');
% figure();
% plot(z(:,1), z(:,2));
% title('Time  Domain  Signal  with  Signal  Sampling  Period  N = 200');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Part 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Part 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load('signal.mat');
% Ts = 0.01;              % <--- Sampling period
% y = fft(z(:,2));        % <--- 
% fs = 1/Ts;              % <--- Sampling Frequency
% 
% n = length(z(:,2));     % <--- Number of samples in the signal
% fshift = (-n/2:(n/2)-1)*(fs/n); % <--- x axis frequency (Hz)
% yshift = fftshift(y);   % <--- shifted fft around 0 frequency
% figure();
% stem(fshift, abs(yshift));
% title('Stem Plot of Frequency Spectrum');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Part 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Part 2 Adding Frequency Bins
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure();
% sig = cos(2*pi*1.*z(:,1)) + cos(2*pi*1.5.*z(:,1)) ...
%     + cos(2*pi*2.*z(:,1)) + cos(2*pi*2.5.*z(:,1)) ...
%     + cos(2*pi*4.*z(:,1));
% plot(z(:,1), sig);
% title('Frequency Bins Added Together to Reproduce Fundamental Frequency');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Part 2 Adding Frequency Bins
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Part 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load('signal.mat');
% Ts = 0.01;
% fs = 1/Ts;
% for i=481:600    % <--- for loop to replace last 120 with zeros
%     z(i, 2) = 0; % <--- Replace with zeros
% end
% 
% figure();
% plot(z(:,1), z(:,2));
% title('Time  Domain  Signal  with  Last 120 Samples Replaced With Zeros(0)');
% y = fft(z(:,2));
% n = length(z(:,2));
% fshift = (-n/2:(n/2)-1)*(fs/n);
% yshift = fftshift(y);
% figure();
% stem(fshift, abs(yshift));
% title('Magnitude Spectrum with Spectral Leakage');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Part 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Part 4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load('signal.mat');
% Ts = 0.01;
% fs = 1/Ts;
% for i=481:600    % <--- for loop to replace last 120 with zeros
%     z(i, 2) = 0; % <--- Replace with zeros
% end
% 
% [c, lags] = xcorr(z(:,2));
% figure();
% stem(lags(600:1199)*Ts, c(600:1199));
% title('Autocorrelation of Signal');
% 
% [c, lags] = xcorr(z(:,2), 'unbiased');
% figure();
% stem(lags(600:1199)*Ts, c(600:1199));
% title('Unbiased Autocorrelation of Signal');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Part 4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
