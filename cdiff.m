%///////////////////////////////////////
% Numerical Anaysis
% Lee Allers
% Fall 2016
% Centered Difference Formula
%///////////////////////////////////////

function fp = cdiff(f,x,h_in)
x1 = x+h_in;
x2 = x-h_in;
h = 2.*h_in;
F1 = f(x1);
F2 = f(x2);
fp = (F1 - F2)./h;
end
