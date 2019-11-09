%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: takes in an input, tol, and returns the number of iterations
% necessary to achieve a certain error tolerance using the Nelder-
% Mead algorithm
%
% Author: Corey Ong
%
% Date: 11/8/19
%
% Institution: The College of New Jersey (TCNJ)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function N = Nelder_Mead(tol)


% stores x and y values
X = [0.35 2.8; 4 4; 4.5 4.5];
err = 1;

% number of iterations
N = 0;

while err > tol
    % Increment iterations
    N = N + 1;
    
    %orders the points from best to worst
    vals = [f(X(1,:)) f(X(2,:)) f(X(3,:))];
    [vSorted, indsVec] = sort(vals);
    
    %computes midpoint between x1 and x2
    mVec = 0.5*(X(indsVec(1),:)+X(indsVec(2),:));
    
    %computes reach vector
    rVec = mVec + (mVec - X(indsVec(3),:)); 
    
    %transformation step
    if f(rVec) < vSorted(3)
        X(indsVec(3),:) = rVec;
    
    %defines xc
    elseif f(rVec) > vSorted(3)
        xC = 0.5*(mVec + X(indsVec(3),:));
        
        if f(xC) < vSorted(3)
            X(indsVec(3),:) = xC;
        else
            
            % shrinks triangle in direction of x1 vector
            m2Vec = 0.5*(X(indsVec(1),:)+X(indsVec(3),:));
            X(1,:) = X(indsVec(1),:);
            X(2,:) = mVec;
            X(3,:) = m2Vec;
        end
    end
    
    %computes error
    err = abs(f(X(indsVec(3),:)) - f(X(indsVec(1),:)));
    
end
min = vSorted(1)

function val = f(x)
val = -(sin(x(1))+cos(x(2)));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
% a.) It takes 29 iterations to achieve 1e-8 accuracy.
% b.) It appears to converge to -2.0000. The true minimum is -2, so it 
% is accurate but not exact.
% c.) It take 58 iterations to achieve 1e-8 accuracy. The minima was 
% -2.0000. It took twice as many interations as part (a)
% d.) The minima was -2.0000.


