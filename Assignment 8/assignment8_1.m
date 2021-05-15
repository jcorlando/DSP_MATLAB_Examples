clc;
clear all;
close all;

% Problem # 28 Part (a)
ws = 0.5*pi;
wp = 0.3*pi;
As = 50;
Ap = 0.5;

% determine the ripples ?p and ?s and set
% ? = min{?p, ?s}.
delta_p = (10^(Ap/20)-1)/(10^(Ap/20)+1);
delta_s = (1+delta_p)/(10^(As/20));
delta = min([delta_p, delta_s]);

% determine the cutoff frequency of the ideal
% lowpass prototype by ?c = (?p + ?s)/2.
wc = (ws + wp)/2;
% Determine the design parameters 
% A = ?20 log10 ? and ? = ?s ? ?p.
dw = ws - wp;
% determine the required value of M = L ? 1
L = 6.6*pi/dw;
M = L-1;
% increase M by one to have a flexible type-I filter
if mod(M, 2) == 1
    M = M+1;
end

% Create Hamming Window
n = (0:M)'-M/2;
hd = (wc/pi)*ones(size(n));
i = find(n);
hd(i) = sin(wc*n(i))./(pi*n(i));
h = hd.*hamming(M+1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Part (b) Uncomment for Part (b) only
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[M, wn, beta, ftype] = kaiserord([0.3 0.5], ...
    [1 0], [delta_s, delta_p]);
h = fir1(M, wn, ftype, kaiser(M + 1, beta));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Part (b) Uncomment for Part (b) only
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Begin Plot
w = linspace(0,1,1000)*pi;
H = freqz(h, 1, w);
H_mag = abs(H);
H_db = 20*log10(H_mag./max(H_mag));


% Determine the amplitude Response of the system
h_2 = h(:)';
M_2 = length(h_2);
L_2 = floor(M_2/2);
if fix(h_2(1:1:L_2)*10^10) == fix(h_2(M_2:-1:M_2-L_2+1)*10^10)
    L_3 = (M_2-1)/2;
    a_2 = [h_2(L_3+1) 2*h_2(L_3:-1:1)];
    n_2 = [0:1:L_3];
    w_2 = w(:);
    Ha = cos(w_2*n_2)*a_2';
end


% Determine the Approximation Error
% And determine the zoom Magnitude Response
error = nan(1,length(w));
magz1 = nan(1,length(w));
magz2 = nan(1,length(w));
ind = w <= wp;
error(ind) = Ha(ind) - 1;
magz1(ind) = H_db(ind);
ind = w >= ws;
error(ind) = Ha(ind);
magz2(ind) = H_db(ind);

% PLot all variables
subplot(2, 2, 1);
stem(0:M, h, 'filled');
title('Impulse Response')
subplot(2, 2, 2);
plot(w/pi, H_db);
title('Magnitude Response in decibles (dB)')
subplot(2, 2, 3);
plot(w/pi, error);
title('Approximation Error')
subplot(2, 2, 4);
yyaxis left
plot(w/pi, magz1)
yyaxis right
plot(w/pi, magz2)
title('Zoom of Magnitude Response (dB)')
sgtitle('Plots Using the Kaiser Window')


