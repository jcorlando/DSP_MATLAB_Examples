clc
clear all
close all

x = -20:20;
y = sinc(x);
stem(x,y, 'r')
title('Sinc Plot')