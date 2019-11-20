%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: The algorithm implements the Gradient Descent algorithm
% using the Barzilai-Borwein step-size for gamma. It finds the 
% minimum and returns iterations
%
% Author: Corey Ong
%
% Date: 11/20/19
%
% Institution: The College of New Jersey (TCNJ)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function N = Gradient_Descent_2(tol)

% initial guess
x = [1, 1.5];

% number of iterations
N = 0;

gamma = 0.5;
err = 1;


while err > tol
    
    x1 = x - (gamma * grad(x)); % define x1
    
    N = N + 1; % counts number of iterations
    
    % redefine gamma
    gamma = abs(((x1-x).'*(grad(x1)-grad(x))))/(grad(x1)-grad(x).'*(grad(x1)-grad(x)));
     
    err = sqrt((x1-x).'*(x1-x));
    
    x = x1; % changes to previous
   
end

% gradient function
function val = grad(x)

val = [-cos(x(1)); sin(x(2))];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% a. 6 iterations
% b. 7 iterations
