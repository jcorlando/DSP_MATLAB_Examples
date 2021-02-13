clc
clear all
close all

% My MATLAB script for Problem #5 Part (b)
% n = -20:1:20;  % Range of the signal
% xn_1 = cos((0.1.*n) - (pi/5));
% stem(n, xn_1)
% title('Problem #5  Part (b)')



% My MATLAB script for Problem #5 Part (c)
% n = -10:1:20;  % Range of the signal
% xn_2 = cos((0.1.*pi.*n) - (pi/5));
% stem(n, xn_2)
% title('Problem #5  Part (c)')



% My MATLAB script for Problem #7
% x1n = [1, zeros(1,20)];                         %x1n is 1 only when n=0
% yn_prev = 0;                                    %y[-1] = 0;
% for n=0:20
%     yn_next = ((n/(n+1))*yn_prev)+x1n(n+1);
%     yn_prev = yn_next;
%     yn(n+1) = yn_next;                          %storing y[n]
% end
% subplot(2,2,1);
% stem(0:20,yn);
% title('y1[n]  and  x[n]  =  d[n]')
% 
% 
% x1n = [1, zeros(1,20)];                         %x1n is 1 only when n=0
% yn_prev = 0;                                    %y[-1] = 0
% for n=0:20
%     yn_next = 0.9*yn_prev+x1n(n+1);
%     yn_prev = yn_next;
%     yn(n+1) = yn_next;
% end
% subplot(2,2,2);
% stem(0:20,yn);
% title('y2[n]  and  x[n]  =  d[n]')
% 
% 
% x1n = [0 0 0 0 0 1 zeros(1,16)];                %x2n is 1 only when n=5
% yn_prev = 0;                                    %y[-1] = 0;
% for n=0:20
%     yn_next = ((n/(n+1))*yn_prev)+x1n(n+1);
%     yn_prev = yn_next;
%     yn(n+1) = yn_next;                          %storing y[n]
% end
% subplot(2,2,3);
% stem(0:20,yn);
% title('y1[n]  and  x[n]  =  d[n-5]')
% 
% 
% x1n = [0 0 0 0 0 1 zeros(1,16)];                %x2n is 1 only when n=5
% yn_prev = 0;                                    %y[-1] = 0
% for n=0:20
%     yn_next = 0.9*yn_prev+x1n(n+1);
%     yn_prev = yn_next;
%     yn(n+1) = yn_next;
% end
% subplot(2,2,4);
% stem(0:20,yn);
% title('y2[n]  and  x[n]  =  d[n-5]')



% My MATLAB script for Problem #8
% n=0:10;
% a = [1];                                  % left hand side of difference equation
% b = (1/5)*[1 1 1 1 1];                    % right hand side of difference equation
% x = [1, zeros(1,10)];
% k=filter(b,a,x)
% stem(n,k);
% title('Impulse response h[n] of 5-point moving average filter')



% My MATLAB script for Problem #17 Part (a)
% b = [0.18 0.1 0.3 0.1 0.18];                % right hand side of difference equation
% a = [1 -1.15 1.5 -0.7 0.25];                % left hand side of difference equation
% N = 101;                                    %0 <= n <= 100
% h = impz(b,a,N);
% stem(0:100,h);
% title('Impulse response h[n] of Difference Equation')




% My MATLAB script for Problem #17 Part (b)
% b = [0.18 0.1 0.3 0.1 0.18];                    % right hand side of difference equation
% a = [1 -1.15 1.5 -0.7 0.25];                    % left hand side of difference equation
% xn = ones(1,101);                               % x[n] = u[n] for 0 <= n <= 100
% y = filter(b,a,xn);
% stem(0:100,y);
% title('Output of y[n] if x[n] = u[n]')




% My MATLAB script for Problem #17 Part (c)
% b = [0.18 0.1 0.3 0.1 0.18];                        % right hand side of difference equation
% a = [1 -1.15 1.5 -0.7 0.25];                        % left hand side of difference equation
% N = 101;                                            % 0 <= n <= 100
% h = impz(b,a,N);
% xn = ones(1,101);                                   % x[n] = u[n] for 0 <= n <= 100
% y = conv(h,xn);
% stem(0:200,y);
% title('Unit step response: conv(h,x)')



% My MATLAB script for Problem #17 Part (d)
% b = [0.18 0.1 0.3 0.1 0.18];                        % right hand side of difference equation
% a = [1 -1.15 1.5 -0.7 0.25];                        % left hand side of difference equation
% N = 101;                                            % 0 <= n <= 100
% h = impz(b,a,N);
% xn = ones(1,101);                                   % x[n] = u[n] for 0 <= n <= 100
% y = filter(h,1,xn);
% stem(0:100,y);
% title('Unit step response: filter(h,1,x)')












