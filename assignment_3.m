clc
clear all
close all

% my code for Problem  #11 part(a)
% N = 10;
% n = 0:N-1;                                      % x1[n] has fandamental period 10
% x = sin(2*pi*(3/10).*n);                        % x1[n] = sin[2?(3/10)n]
% X = fft(x)./N;
% xm1 = abs(X);
% xp1 = angle(X);
% 
% figure(1);
% subplot(2, 2, [1,2])                            % This is a plot of the original signal
% stem(n, x, 'b');                                % This is a plot of the original signal
% xlabel('n')
% ylabel('x_1[n]')
% title('Signal Plot of x_1[n]')
% subplot(2, 2, 3);                               % This is a plot of the Magnitude
% stem(n, xm1, 'g');                              % This is a plot of the Magnitude
% title('plot of magnitude spectra of x_1[n]');
% xlabel('K');
% ylabel('|X_1(K)|');
% xticks(n);
% subplot(2, 2, 4);                               % This is a plot of the Phase
% stem(n, xp1, 'r');                              % This is a plot of the Phase
% title('plot of phase spectra of x_1[n]');
% xlabel('K');
% ylabel('\angleX_1(K)');
% xticks(n);
% ylim([-pi pi]);
% yticks([-pi:pi/4:pi]);
% yticklabels({'-\pi','-3\pi/4','-\pi/2','-\pi/4','0','\pi/4','\pi/2','3\pi/4','\pi'});




% my code for Problem  #11 part(b)
% N = 6;
% n = 0:N-1;                                      % x2[n] has fandamental period 6
% x = [1, 2, -1, 0, -1, 2];                       % x2[n] = [1, 2, -1, 0, -1, 2]
% X = fft(x)./N;
% xm1 = abs(X);
% xp1 = angle(X);
% 
% figure(1);
% subplot(2, 2, [1,2])                            % This is a plot of the original signal
% stem(n, x, 'b');                                % This is a plot of the original signal
% xlabel('n')
% ylabel('x_2[n]')
% title('Signal Plot of x_2[n]')
% subplot(2, 2, 3);                               % This is a plot of the Magnitude
% stem(n, xm1, 'g');                              % This is a plot of the Magnitude
% title('plot of magnitude spectra of x_2[n]');
% xlabel('K');
% ylabel('|X_2(K)|');
% xticks(n);
% subplot(2, 2, 4);                               % This is a plot of the Phase
% stem(n, xp1, 'r');                              % This is a plot of the Phase
% title('plot of phase spectra of x_2[n]');
% xlabel('K');
% ylabel('\angleX_2(K)');
% xticks(n);
% ylim([-pi pi]);
% yticks([-pi:pi/4:pi]);
% yticklabels({'-\pi','-3\pi/4','-\pi/2','-\pi/4','0','\pi/4','\pi/2','3\pi/4','\pi'});



% my code for Problem  #11 part(c)
% N = 4;
% n = 0:N-1;                                      % x3[n] has fandamental period 4
% x = ( 1 - sin((pi.*n)/4) );                     % x3[n] = 1 - sin((pi.*n)/4)
% X = fft(x)./N;
% xm1 = abs(X);
% xp1 = angle(X);
% 
% figure(1);
% subplot(2, 2, [1,2])                            % This is a plot of the original signal
% stem(n, x, 'b');                                % This is a plot of the original signal
% xlabel('n')
% ylabel('x_3[n]')
% title('Signal Plot of x_3[n]')
% subplot(2, 2, 3);                               % This is a plot of the Magnitude
% stem(n, xm1, 'g');                              % This is a plot of the Magnitude
% title('plot of magnitude spectra of x_3[n]');
% xlabel('K');
% ylabel('|X_3(K)|');
% xticks(n);
% subplot(2, 2, 4);                               % This is a plot of the Phase
% stem(n, xp1, 'r');                              % This is a plot of the Phase
% title('plot of phase spectra of x_3[n]');
% xlabel('K');
% ylabel('\angleX_3(K)');
% xticks(n);
% ylim([-pi pi]);
% yticks([-pi:pi/4:pi]);
% yticklabels({'-\pi','-3\pi/4','-\pi/2','-\pi/4','0','\pi/4','\pi/2','3\pi/4','\pi'});





% % my code for Problem  #11 part(d)
% N = 12;
% n = 0:N-1;                                      % x4[n] has fandamental period 4
% x = ( 1 - sin((pi.*n)/4) );                     % x4[n] = 1 - sin((pi.*n)/4)
% X = fft(x)./N;
% xm1 = abs(X);
% xp1 = angle(X);
% 
% figure(1);
% subplot(2, 2, [1,2])                            % This is a plot of the original signal
% stem(n, x, 'b');                                % This is a plot of the original signal
% xlabel('n')
% ylabel('x_4[n]')
% title('Signal Plot of x_4[n]')
% subplot(2, 2, 3);                               % This is a plot of the Magnitude
% stem(n, xm1, 'g');                              % This is a plot of the Magnitude
% title('plot of magnitude spectra of x_4[n]');
% xlabel('K');
% ylabel('|X_4(K)|');
% xticks(n);
% subplot(2, 2, 4);                               % This is a plot of the Phase
% stem(n, xp1, 'r');                              % This is a plot of the Phase
% title('plot of phase spectra of x_4[n]');
% xlabel('K');
% ylabel('\angleX_4(K)');
% xticks(n);
% ylim([-pi pi]);
% yticks([-pi:pi/4:pi]);
% yticklabels({'-\pi','-3\pi/4','-\pi/2','-\pi/4','0','\pi/4','\pi/2','3\pi/4','\pi'});



% % my code for Problem  #13 part(a)
% n = -49:1:50;
% x = ((1/2).^abs(n)).*(cos(pi*(n-1)/8));
% omega = -pi:(pi/1000):pi;
% N = length(x);
% X = exp(-j*omega'*n)*(x');
% 
% 
% subplot(2, 2, [1,2])                    % This is a plot of the original signal
% stem(n, x, 'b');                        % This is a plot of the original signal
% xlabel('n')
% ylabel('x[n]')
% title('x[n]')
% 
% subplot(2, 2, 3)                        % This is the magnitude plot
% plot( (omega/pi), abs(X), 'r' );        % This is the magnitude plot
% title('Magnitude response')
% xlabel('w/pi')
% ylabel('|X(e^jw)|')
% 
% subplot(2, 2, 4)                        % This is the phase plot
% plot((omega/pi), angle(X), 'g' );       % This is the phase plot
% title('Phase response')
% xlabel('w/pi')
% ylabel('<X(e^jw)')



% % my code for Problem  #14 part(a)
omega = -pi:(pi/100000):pi;
X1 = ((cos(omega)).^2) + ((sin(3.*omega)).^2);
X1_inverse = ifft(X1);
plot(omega/pi, X1, 'r' );
% stem(real(X1_inverse), 'r' );






