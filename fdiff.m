%///////////////////////////////////////
% Numerical Anaysis
% Lee Allers
% Fall 2016
% Forward Difference Formula
%///////////////////////////////////////
function fp = fdiff(f,x,h_in)
f1 = f(x);
f2 = f(x+h_in);
fp = (f2 - f1)./h_in;
end

