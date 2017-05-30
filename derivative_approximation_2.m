%///////////////////////////////////////
% Numerical Anaysis
% Lee Allers
% Fall 2016
% Script for Forward/Centered Difference Formula.
%///////////////////////////////////////
clc

f =@(x) exp(x);
x = 0;
h = (10.^(-1:-1:-9)); %Vector h that decreases in size

FDIFF = fdiff(f,x,h);
CDIFF = cdiff(f,x,h);

Err_fdiff = abs(FDIFF - 1);
Err_cdiff = abs(CDIFF - 1);

%Figures plotting the error in our approximations where we effectively take
%a limit as h approaches 0

figure('Name', 'Derivative Approximation')
loglog(h,Err_fdiff,h,Err_cdiff)
legend('FDiff','CDiff');xlabel('h');ylabel('Error in f''(x)')
