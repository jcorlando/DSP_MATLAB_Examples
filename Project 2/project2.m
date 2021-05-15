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

% Plots Of Frequency Spectrum of Original Signal
figure();
subplot(2,1,1);
plot(fshift, abs(yshift));
xlabel('Frequency (Hz)')
ylabel('Magnitude');
ylim([-7000 60000]);
xlim([-300 6000]);
title('Plot of Frequency Spectrum');
subplot(2,1,2);
plot(fshift, 10*log(abs(yshift)));
xlabel('Frequency (Hz)')
ylabel('Magnitude');
xlim([-300 6000]);
title('Corresponding Frequency Spectrum Plot Using Logarithmic Decibel Scaling (dB)');
% End Plots Of Frequency Spectrum of Original Signal

% Create Filter # 1
wc1 = 1106;
wc2 = 1150;
wn = [wc1 wc2]/(fs/2);
N = 4000;
h = fir1(N, wn, 'stop');
% Create Filter # 1

% Impulse Response of filter 1
% [H, w] = freqz(h, 1);
% figure();
% subplot(2, 1, 1);
% plot(w*fs/(2*pi), 20*log10(abs(H)));
% title('Frequency Response');
% xlabel('frequency (Hz)');
% ylabel('Magnitude Response (dB)');
% subplot(2, 1, 2);
% plot(w*fs/(2*pi), unwrap(angle(H)));
% xlabel('frequency (Hz)');
% ylabel('Phase Response (Radians)');
% Impulse Response of filter 1

% Filter the Signal with filter # 1
x = filter(h, 1, x);
% x = filter(h2, 1, x);
% Filter the Signal with filter # 1

% DFT of signal of filtered signal after filter #1
y = fft(x);
n = length(x);     % <--- Number of samples in the signal
fshift = (-n/2:(n/2)-1)*(fs/n); % <--- x axis frequency (Hz)
yshift = fftshift(y);   % <--- shifted fft around 0 frequency
% DFT of signal of filtered signal after filter #1

% Plots Of Frequency Spectrum of Signal After Filter # 1
figure();
subplot(2,1,1);
plot(fshift, abs(yshift));
xlabel('Frequency (Hz)')
ylabel('Magnitude');
ylim([-7000 60000]);
xlim([-300 6000]);
title('Plot of Frequency Spectrum After Filter # 1');
subplot(2,1,2);
plot(fshift, 10*log(abs(yshift)));
xlabel('Frequency (Hz)')
ylabel('Magnitude');
xlim([-300 6000]);
title('Corresponding Frequency Spectrum Plot Using Logarithmic Decibel Scaling (dB)');
% Plots Of Frequency Spectrum of Signal After Filter # 1





audiowrite('filtered.wav', x, fs);
