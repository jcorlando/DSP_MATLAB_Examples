clc;
clear all;
close all;

[x, fs] = audioread('imperial_march_noisy.wav');

% Plot Time Domain Signal
dt = 1/fs;                      % Sampling period
t = 0:dt:(length(x)*dt)-dt;
figure();
plot(t, x);
title('Time Domain Signal Representation');
xlabel('Seconds');
ylabel('Amplitude');
% Plot Time Domain Signal

% Discrete Fourier Transform of the first 12 seconds of signal
y = fft(x);
n = length(x);     % <--- Number of samples in the signal
fshift = (-n/2:(n/2)-1)*(fs/n); % <--- x axis frequency (Hz)
yshift = fftshift(y);   % <--- shifted fft around 0 frequency
% Discrete Fourier Transform of the first 12 seconds of signal

% Plots of Frequency Spectrum of Original Signal
figure();
subplot(2,1,1);
plot(fshift, abs(yshift));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
ylim([-7000 60000]);
xlim([-300 6000]);
title('Original Signal Frequency Spectrum Plot');
subplot(2,1,2);
plot(fshift, 10*log(abs(yshift)));
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
xlim([-300 6000]);
title('Corresponding Frequency Spectrum Plot Using Logarithmic Decibel Scaling (dB)');
% Plots of the Frequency Spectrum of Original Signal

% Create Filter # 1
wc1 = 1106;
wc2 = 1150;
wn = [wc1 wc2]/(fs/2);
N = 3100;
h = fir1(N, wn, 'stop');
% Create Filter # 1

% Create Filter # 2
wc1 = 2985;
wc2 = 5865;
wn = [wc1 wc2]/(fs/2);
N = 70;
h2 = fir1(N, wn, 'stop');
% Create Filter # 2

% Create Filter # 3
wc1 = 65;
wc2 = 81;
wn = [wc1 wc2]/(fs/2);
N = 10000;
h3 = fir1(N, wn, 'stop');
% Create Filter # 3

% Filter the Signal
x = filter(h2, 1, x);
x = filter(h3, 1, x);
x = filter(h, 1, x);
% Filter the Signal

% Impulse Response of filter 1
[H, w] = freqz(h, 1);
figure();
subplot(3, 1, 1);
plot(w*fs/(2*pi), 20*log10(abs(H)));
title('(1128Hz) Band-Stop Filter Response');
xlabel('frequency (Hz)');
ylabel('Magnitude Response (dB)');
xlim([-300 9000]);
ylim([-30 6]);
% Impulse Response of filter 1

% Impulse Response of filter 2
[H, w] = freqz(h2, 1);
subplot(3, 1, 2);
plot(w*fs/(2*pi), 20*log10(abs(H)));
title('(3500Hz - 5500Hz) Colored Noise Band-Stop Filter Response');
xlabel('frequency (Hz)');
ylabel('Magnitude Response (dB)');
xlim([-300 9000]);
ylim([-85 25]);
% Impulse Response of filter 2

% Impulse Response of filter 3
[H, w] = freqz(h3, 1);
subplot(3, 1, 3);
plot(w*fs/(2*pi), 20*log10(abs(H)));
title('(73Hz) Band-Stop Filter Response');
xlabel('frequency (Hz)');
ylabel('Magnitude Response (dB)');
xlim([-300 9000]);
ylim([-0.75 0.25]);
% Impulse Response of filter 3

% DFT of signal of filtered signal after filtering
y = fft(x);
n = length(x);     % <--- Number of samples in the signal
fshift = (-n/2:(n/2)-1)*(fs/n); % <--- x axis frequency (Hz)
yshift = fftshift(y);   % <--- shifted fft around 0 frequency
% DFT of signal of filtered signal after filtering

% Plots Of Frequency Spectrum of Signal After Filtering
figure();
subplot(2,1,1);
plot(fshift, abs(yshift));
xlabel('Frequency (Hz)')
ylabel('Magnitude');
ylim([-7000 60000]);
xlim([-300 6000]);
title('Plot of Frequency Spectrum After Filtering');
subplot(2,1,2);
plot(fshift, 10*log(abs(yshift)));
xlabel('Frequency (Hz)')
ylabel('Magnitude');
xlim([-300 6000]);
title('Corresponding Frequency Spectrum Plot Using Logarithmic Decibel Scaling (dB)');
% Plots Of Frequency Spectrum of Signal After Filtering

% Plot Time Domain Signal After Filtering
dt = 1/fs;                      % Sampling period
t = 0:dt:(length(x)*dt)-dt;
figure();
plot(t, x);
title('Time Domain Signal After Filtering');
xlabel('Seconds');
ylabel('Amplitude');
% Plot Time Domain Signal After Filtering

% Write Audio to wav file
audiowrite('filtered.wav', x, fs);
% Write Audio to wav file
