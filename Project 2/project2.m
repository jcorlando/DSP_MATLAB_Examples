clc;
clear all;
close all;

[x, fs] = audioread('imperial_march_noisy.wav');

% Plot Time Domain Signal
% dt = 1/fs;                      % Sampling period  
% t = 0:dt:(length(x)*dt)-dt;
% figure();
% plot(t, x);
% title('Time Domain Signal Representation');
% xlabel('Seconds');
% ylabel('Amplitude');
% Plot Time Domain Signal

% Discrete Fourier Transform of signal
y = fft(x);
n = length(x);     % <--- Number of samples in the signal
fshift = (-n/2:(n/2)-1)*(fs/n); % <--- x axis frequency (Hz)
yshift = fftshift(y);   % <--- shifted fft around 0 frequency
% Discrete Fourier Transform of signal

% Plots Of Frequency Spectrum
% subplot(2,1,1);
% plot(fshift, abs(yshift));
% xlabel('Frequency (Hz)')
% ylabel('||');
% ylim([-7000 60000]);
% xlim([-300 6000]);
% title('Plot of Frequency Spectrum');
% subplot(2,1,2);
% plot(fshift, 10*log(abs(yshift)));
% xlabel('Frequency (Hz)')
% ylabel('Magnitude');
% xlim([-300 6000]);
% title('Corresponding Frequency Spectrum Plot Using Logarithmic Decibel Scaling (dB)');
% End Plots Of Frequency Spectrum


% Impulse Response of filter 1
wc1 = 1800;
wc2 = 2200;
wn = [wc1 wc2]/(fs/2);
N = 700;
h = fir1(N, wn, 'stop');
[H, w] = freqz(h, 1);
figure();
subplot(2, 1, 1);
plot(w*fs/(2*pi), 20*log10(abs(H)));
title('Frequency Response');
xlabel('frequency (Hz)');
ylabel('Magnitude Response (dB)');
axis([0, fs/2, -80, 5]);
subplot(2, 1, 2);
plot(w*fs/(2*pi), unwrap(angle(H)));
xlabel('frequency (Hz)');
ylabel('Phase Response (Radians)');
% Impulse Response of filter 1









audiowrite('filtered.wav', x, fs);
