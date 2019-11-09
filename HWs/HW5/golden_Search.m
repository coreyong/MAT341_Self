%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: The algorithm finds the minimum of the given function and
% returns the number of iterations it takes to achieve the tolerance
% inputted.
%
% Author: Corey Ong
%
% Date: 9/29/19
%
% Institution: The College of New Jersey (TCNJ)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function N = golden_Search(tol)

%interval
a=0;                            
b=2;                           

%search step
t=double((sqrt(5)-1)/2);        

% iterations
N=0;                            

% finds x values
x1=a+(1-t)*(b-a);               
x2=a+t*(b-a);

% computing values in function
f_x1=f(x1);                     
f_x2=f(x2);


%number of loops to achieve tolerance
while ((abs(b-a)>tol))
   
    %increment counter
    N=N+1;
    if(f_x1<f_x2)
        b=x2;
        x2=x1;
        x1=a+(1-t)*(b-a);
        
        f_x1=f(x1);
        f_x2=f(x2);
        
    else
        a=x1;
        x1=x2;
        x2=a+t*(b-a);
        
        f_x1=f(x1);
        f_x2=f(x2);
    end
    
    N=N+1;
end


disp(N) %returns number of iterations

%given function
function val = f(x)
        val = 0.5 - x*exp(-x^2);
        
        
% It takes 80 iterations to achieve 1e-8 accuracy
