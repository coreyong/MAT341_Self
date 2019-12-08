%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: This algorithm takes in one input, the size of the matrix,
% and returns the operation count necessary to row reduce a matrix
%
% Author: Corey Ong
%
% Date: 12/7/19
%
% Institution: The College of New Jersey (TCNJ)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function OpCount = go_Go_Gaussian_Elimination(N)

%sets random matrix
B = rand(N,N);

%initialize the counter
OpCount = 0;


for h=1:N
    
    for i=h:N
        
        %row operations
        for t=1:N
            
            A = (B(i,t) / B(h,h)); 
            OpCount = OpCount + 1;
            
            %this runs if i equals h
            if i == h 
                B(i,t) = A;
            else
                val = A * B(h,t); 
                OpCount = OpCount + 1;
            
                B(i,t) = val - B(i,t);
                OpCount = OpCount + 1;
            end
            
        end
    end
end

% New matrix h
for h=N:-1:2
    for i=h-1:-1:1
        A = B(i,h) * B(h,h);
        OpCount = OpCount + 1;
        
        B(i,h) = B(i,h) - A;
        OpCount = OpCount + 1;
    end
end