%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: implements Newton's Method to find a local minimum with
% the initial guess x1=0.25. Then returns the number of iterations to
% achieve certain tolerance.
%
% Author: Corey Ong
%
% Date: 11/8/19
%
% Institution: The College of New Jersey (TCNJ)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function N = Newtons_1D_Opt(tol)

%intial value
x = 1.5;

err = 1;

%number of iterations
N = 0;

while err > tol
    
    %increment iterations
    N = N + 1;
    
    %redefine xn
    xn = x - f_deriv(x)/s_deriv(x);
  
    err = abs(xn - x);
    x = xn;
end

%derivative of function
function val = f_deriv(x)
val = 2*x^2*exp(-x^2) - exp(-x^2);

%second derivative of function
function val = s_deriv(x)
val = 6*x*exp(-x^2) - 4*x^3*exp(-x^2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% a.) It takes 6 iterations to achieve 1e-8 accuracy. 
% b.) The number of iterations changed to 736 when the intial guess
% is 1.5



