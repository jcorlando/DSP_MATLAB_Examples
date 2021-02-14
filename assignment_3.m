clc
clear all
close all

% my code for Problem  #11 part(a)
N = 15;
n = 0:N-1;                                        %x1[n] has fandamental period 15
x = (0.5).^(n);
X = fft(x)./N;
xm1 = abs(X);
xp1 = angle(X);

figure(1);
subplot(2, 2, [1,2])                            % This is a plot of the original signal
stem(n, x, 'b');                                % This is a plot of the original signal
xlabel('n')
ylabel('x[n]')
title('x[n]')
subplot(2, 2, 3);                               % This is a plot of the Magnitude
stem(n, xm1, 'g');                              % This is a plot of the Magnitude
title('plot of magnitude spectra of x_1[n]');
xlabel('K');
ylabel('|X_1(K)|');
xticks(n);
subplot(2, 2, 4);                               % This is a plot of the Phase
stem(n, xp1, 'r');                              % This is a plot of the Phase
title('plot of phase spectra of x_1[n]');
xlabel('K');
ylabel('\angleX_1(K)');
xticks(n);
ylim([-pi pi]);
yticks([-pi:pi/4:pi]);
yticklabels({'-\pi','-3\pi/4','-\pi/2','-\pi/4','0','\pi/4','\pi/2','3\pi/4','\pi'});

