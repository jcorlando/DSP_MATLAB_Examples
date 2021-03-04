clc
clear all
close all

% Problem # 4 Part (a)
% (1-(1/3)z^-1) / (1-z^-1)*(1+2z^-1)
% Code to determine the sequences corresponding
% to the following z-transforms:
% b = [1; (-1/3); 0];
% a = [1; 1; -2];
% [residues, poles, directTerm] = residuez(b, a)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Problem # 4 Part (b)
% (1 - z^-1) / (1 - (1/4)z^-1)
% Code to determine the sequences corresponding
% to the following z-transforms:

% b = [1; -1];
% a = [1; -(1/4)];
% [residues, poles, directTerm] = residuez(b, a)
%%% or this vvv
% b = [0; 4; -4];
% a = [4; -1; 0];
% [residues, poles, directTerm] = residue(b, a)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Problem # 4 Part (c)
% () / ()
% Code to determine the sequences corresponding
% to the following z-transforms:
% b = [1; 0; 0];
% a = [1; -0.75; 0.125];
% [residues, poles, directTerm] = residuez(b, a)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% Problem # 16 Part (c)
% n=0:50;
% x=(1/2).^n;                             % x[n]
% b=[2 -2];                               % numerator coefficients of H(z)
% a=[1 -1/3];                             % denominator coefgicients of H(z)
% yc=filter(b,a,x)
% yb=8.*(1/3).^n-6.*(0.5).^n              % y[n] determined analytically in part(b)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% Problem # 19 Part (a)
% b = [1, 0, 0, 0, 0, 0, 0, 0, 0, -(1/1024)];
% a = [1, -(1/2)];
% subplot(1, 2, 1)
% zplane(b,a)
% title('Pole Zero Pattern')
% [h,t] = impz(b,a);
% subplot(1, 2, 2)
% stem(t,h);
% title('Impulse Response')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




