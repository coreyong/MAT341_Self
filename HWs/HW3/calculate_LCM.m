%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author:   Corey Ong
%
% Date:     10/11/19
%
% FUNCTION: Takes two inputs, two integers x,y and returns
%           the least common multiple between the 2 inputs.
%           
%           input: (1) first number
%                  (2) second number
%
%           returns: LCM
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function lcm_val= calculate_LCM(x,y)

a = x * y;
b = x; 
d = y;

%while loop to find remainder 
while y ~= 0
    f = y;
    y = mod(x,y);
    x = f; 
end

%calculates LCM
c = a / f; 

%Prints LCM
disp(c);