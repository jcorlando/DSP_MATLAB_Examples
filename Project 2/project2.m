clc;
clear all;
close all;

[x, fs] = audioread('imperial_march_noisy.wav');
dt = 1/fs;                      % Sampling period  
t = 0:dt:(length(x)*dt)-dt;
% figure();
% plot(t, x);
% title('Time Domain Signal Representation');
% xlabel('Seconds');
% ylabel('Amplitude');
y = fft(x);
n = length(x);     % <--- Number of samples in the signal
fshift = (-n/2:(n/2)-1)*(fs/n); % <--- x axis frequency (Hz)
yshift = fftshift(y);   % <--- shifted fft around 0 frequency

% Plots Of Frequency Spectrum
subplot(2,1,1);
plot(fshift, abs(yshift));
ylim([-2000 70000]);
xlim([-200 6000]);
title('Plot of Frequency Spectrum');
subplot(2,1,2);
plot(fshift, 10*log(abs(yshift)));
xlim([-200 6000]);
title('Plot of Frequency Spectrum Using Logarithmic Decibel Scale (dB)');
% End Plots Of Frequency Spectrum




audiowrite('filtered.wav', x, fs);