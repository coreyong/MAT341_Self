%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: Takes an input n and m. Returns the value of the sequence 
%
% Author: Corey Ong
%
% Date: 9/20/19
%
% Institution: The College of New Jersey (TCNJ)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function val = square_Root_Sequence(m,n)

%intialize val
val = 0;

for i=1:n
    
    %sign change depending on n
    if mod(n,2)==0
        sgn=-1
    else
        sgn=1
    end
    
    %increment val
    val=val+1;
    
    val=sqrt(m+(-1)^(n+1))*sgn*val; %sequence
    
end

% Assume n = 2. The limit for m=13 is 8.54. The limit for m=31
% is 24.523. the limit for m=43 is 35.519. 


