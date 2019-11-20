%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: The algorithm implements the Gradient Descent algorithm
% to find the number of iterations to get the minimum.
%
% Author: Corey Ong
%
% Date: 11/20/19
%
% Institution: The College of New Jersey (TCNJ)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function N = Gradient_Descent_1(tol,gamma)

    % Initial guess
    x = [1; 1.5];
    err = 1;
    
    %number of iterations
    N = 0;
    
    while err > tol
       
        N = N + 1; % counts iterations
        
        x1 = x; %change x1 to previous guess
       
        x = x - gamma*grad(x);
        
        err = sqrt((x-x1)'*(x-x1)); %redefine error
        
    end 
end

% gradient function
function val = grad(x)
    val = [-cos(x(1)); sin(x(2))];
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% a. It takes 35 iterations
% b. It takes 12 iterations
% c. It takes 34 iterations

