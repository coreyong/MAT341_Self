%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: Implements the successive parabolic interpolation algorithm to
% find the minimum of a function and returns the number of iterations it
% take take achieve a given tolerance.
%
% Author: Corey Ong
%
% Date: 9/29/19
%
% Institution: The College of New Jersey (TCNJ)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function N = successive_Parabolic_Interpolation(tol)

%given intial points
x1 = 0;
x2 = 0.6;
x3 = 1.2;

%interval
a=2;
b=0;

%iterations
N=0;

err=abs(b-a);

%loop to achieve tolerance
while err>tol
    
    %increment
    N = N + 1;
    
    %computes x4
    x4 =f(x1)*(x2.^2-x3.^2)+ f(x2) * (x3.^2-x1.^2)+f(x3)*(x1.^2-x2.^2);
    x4 =x4 / (2*f(x1)*(x2-x3)+2*f(x2)*(x3-x1)+2*f(x3)*(x1-x2));
    
    err=abs(f(x4)-f(x2));
    if f(x4)>f(x2)
        x1=x2;
        x2=x4;
    else
        x3=x2;
        x2=x4;
    end
 
end

%number of iterations
disp(N);
 
%function
function val = f(x)
        val = 0.5 - x*exp(-x^2);
        
% It takes 4 iterations to achive 1e-8.
% The number of iterations changes to 9.There is a warning because the new 
% x3 value is on the end of the interval. Parabola coefficients need to be
% inside the interval. 