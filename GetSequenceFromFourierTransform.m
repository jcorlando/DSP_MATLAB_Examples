clc
clear all
close all

% % my code to retrieve the sequence back from the fourier transform
omega = -pi:(pi/20):pi;
% X1 = ((cos(omega)).^2) + ((sin(3.*omega)).^2);
X1 = zeros(1, length(omega));
for i = 1:length(omega)
    if( omega(i)/pi <= -0.75 || omega(i)/pi >= 0.75 )
    X1(i) = 0;
    else
        X1(i) = 1;
    end
end
X1_inverse = ifft(X1);
% plot(omega/pi, X1, 'r' );
stem(real(X1_inverse), 'r' );

