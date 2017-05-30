%///////////////////////////////////////
% Numerical Anaysis
% Lee Allers
% Fall 2016
% Script for Forward/Centered Difference Formula.
%///////////////////////////////////////

x = linspace(-1,1,100); %Evenly spaced interval between -1 to 1, using 100 points
h = 1e-4;

%////////////////////////////////////////////////
%Calcualting the numerical derivative
f =@(x) 1./(1+x.^2);
FDIFF = fdiff(f,x,h);
CDIFF = cdiff(f,x,h);


%////////////////////////////////////////////////
%Calcualting the exact derivative
F =@(x) -1./(1+x.^2).^2;
FDIFF_ex = fdiff(F,x,h);
CDIFF_ex = cdiff(F,x,h);


%////////////////////////////////////////////////
%Error in the numerical method presented
Err_fdiff = abs(FDIFF - FDIFF_ex);
Err_cdiff = abs(CDIFF - CDIFF_ex);

%////////////////////////////////////////////////
%Plotting the error results.
figure('Name', 'Derivative Approximation')
subplot(2,1,1)
plot(x,Err_fdiff)
legend('FDiff');xlabel('x');ylabel('Error in f''(x)')
subplot(2,1,2)
plot(x,Err_cdiff)
legend('CDiff');xlabel('x');ylabel('Error in f''(x)')

            

