%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: saves the time it takes to run for a variety of differentNvalues
% different N values
%
% Author: Corey Ong
%
% Date: 9/20/19
%
% Institution: The College of New Jersey (TCNJ)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function time = calculate_Nested_For_Loop_Time(N)
tic
k=0;
for i1=1:N
    for i2=1:N
        for i3=1:N
            for i4=1:N
                
                k=k+1;
                
            end
        end
    end
end
time=toc
