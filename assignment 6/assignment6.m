clc;
clear all;
close all;

% Problem # 36 part (a)
% x = -8:1/1000:8;
% y = pi*exp(-1.*abs(x));
% y_1 = pi*exp(-1.*abs(x + 0.3183));
% y_2 = pi*exp(-1.*abs(x - 0.3183));
% for N = 1:length(x)
%     y_final(N) = y_1(N) + y_2(N) + y(N);
% end
% 
% figure;
% plot(x,y);
% hold on
% plot(x, y_1, 'r');
% plot(x, y_2, 'r');
% hold off
% title('Spectrum of X_c(j\Omega) (BLUE) with Red Graphs showing the Effects of Sampling at T = pi');
% figure;
% plot(x, y_final);
% title('Spectrum of X(e^j^\omega) with Sampling at T = pi');

% Problem # 36 part (b)
% x = -8:1/1000:8;
% y = pi*exp(-1.*abs(x));
% y_1 = pi*exp(-1.*abs(x + 0.6366));
% y_2 = pi*exp(-1.*abs(x - 0.6366));
% for N = 1:length(x)
%     y_final(N) = y_1(N) + y_2(N) + y(N);
% end
% 
% figure;
% plot(x,y);
% hold on
% plot(x, y_1, 'r');
% plot(x, y_2, 'r');
% hold off
% title('Spectrum of X_c(j\Omega) (BLUE) with Red Graphs showing the Effects of Sampling at T = 0.5pi');
% figure;
% plot(x, y_final);
% title('Spectrum of X(e^j^\omega) with Sampling at T = 0.5pi');

% Problem # 36 part (c)
x = -8:1/1000:8;
y = pi*exp(-1.*abs(x));
y_1 = pi*exp(-1.*abs(x + 1.5915));
y_2 = pi*exp(-1.*abs(x - 1.5915));
for N = 1:length(x)
    y_final(N) = y_1(N) + y_2(N) + y(N);
end

figure;
plot(x,y);
hold on
plot(x, y_1, 'r');
plot(x, y_2, 'r');
hold off
title('Spectrum of X_c(j\Omega) (BLUE) with Red Graphs showing the Effects of Sampling at T = 0.2pi');
figure;
plot(x, y_final);
title('Spectrum of X(e^j^\omega) with Sampling at T = 0.2pi');

