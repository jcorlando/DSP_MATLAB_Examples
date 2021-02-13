clc
clear all
close all

x=[1 1 1 0 0];
N = length(x);
%plot for 3 periods
k=-N:2*N;

%magnitude computation
% Xm=abs(1+2.*cos(2*pi.*k/N));
% figure;
% subplot(2,1,1);
% stem(k,Xm,'o')
% xlabel('k');
% ylabel('amplitude');
% title('magnitude response');

% c = fft(x)/N;
% Xm = abs(c);
% figure;
% subplot(2,1,1);
% stem(k,Xm,'o')
% xlabel('k');
% ylabel('amplitude');
% title('magnitude response');




% %phase computation
% subplot(2,1,2);
% Xa=angle(exp(-2*j*pi.*k/5).*(1+2.*cos(2*pi.*k/N)));
% stem(k,Xa,'o')
% xlabel('k');
% ylabel('amplitude');
% title('phase response'); 






