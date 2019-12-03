clear;clc;
% Load data using dlmread
% using : dlmread('filename','',[Row Column Row Column]);
% The index of  Row and Column are started from 0
% 
% written by Aulia Khalqillah.S.Si
% 
clear;clc;
file = '3636.hv';
f0av = dlmread(file,'',[2 4 2 4]);
f0 = dlmread(file,'',[4 4 4 4]);
f0min = dlmread(file,'',[4 5 4 5]);
f0max = dlmread(file,'',[4 6 4 6]);
A0 = dlmread(file,'',[5 3 5 3]);
data = dlmread(file,'',9,0);
f = data(:,1);
A = data(:,2);

semilogx(f,A,'r','linewidth',2.0);
xlabel('Frequency (Hz)');
ylabel('Amplification');
title('H/V Curve')
grid minor