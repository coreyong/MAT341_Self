%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: implements the Multivariable Newton's Method to find
% a local minimum and returns the number of iterations to achieve
% a tolerance.
%
% Author: Corey Ong
%
% Date: 11/8/19
%
% Institution: The College of New Jersey (TCNJ)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function N = Newtons_2D_Opt(tol)

err = 1;

%initial values
x = [-0.25;0.25];

%number of iterations
N = 0;

while err > tol
    
    %increment iterations
    N = N + 1;
    xn = x - inv(H(x))*gradf(x);
    
    %error defined by l^2-error
    err = sqrt(dot(x-xn,x-xn));
    x = xn;
end
min = f(x)


function val = f(x)
val = -sin(x(1)) - cos(x(2));

%gradient function
function val = gradf(x)
val = [-cos(x(1)); sin(x(2))];

%Hessian function
function val = H(x)
val = [sin(x(1)) 0; 0 cos(x(2))];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% a.)It takes 5 iterations to find a minima. The minima is -2.
% b.)It takes 4 iterations to find the minima. The minima is -2.



