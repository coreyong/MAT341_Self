%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION:compute sums to find Na and Nb where Na and Nb are
% the smallest possile integers such that N-pi < tolerance
%
% Author: Corey Ong
%
% Date: 9/20/19
%
% Institution: The College of New Jersey (TCNJ)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function calculate_Pi_Sums()

%set error tolerance
tol=1e-6;

%initialize error to get into while-loop
err=1;

%initialize sums to zero
sumA=0;
sum1=0;
sum2=0;
sumB=0;

k=-1;

while err>tol
    k=k+1;
    sumA = sumA + ((6/sqrt(3))*(-1)^k)/(3^k*(2*k+1)); %find pi approx
    err = abs(sumA-pi); %computes error
end
k

k=-1;
err=1;
while err>tol
    k=k+1;
    sum1 = sum1 + (16*(-1)^k)/((5^(2*k+1))*(2*k+1));%find pi approx
    sum2 = sum2 + (4*(-1)^k)/((239^(2*k+1))*(2*k+1));%find pi approx
    sumB = sum1 - sum2;
    err = abs(sumB-pi); %computes error
end
k

