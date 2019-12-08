%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: This algorithm performs linear least squares to find the best
% fit polynomial of degree 12
%
% Author: Corey Ong
%
% Date: 12/7/19
%
% Institution: The College of New Jersey (TCNJ)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function fit_Polynomial_Series()

%number of data points
N = 250; 

%x vector
xData = linspace(-2*pi,2*pi,N);

 % column vector
yData = cos(xData)'; 


for i = 1:N
    y = yData(i);
    for j=1:13
        A(i,j) = xData(i)^(j-1);
    end
end
   
% calculates beta vector
B = ((A' * A) \ A') * yData

for i = 1:N
    x = xData(i);
    
    %initializes summation vector
    f(i,1) = 0;
    
    %initializes counter
    j=1;
    
    while j <=13
        f(i,1) = f(i,1) + B(j) * x^(j-1);
        j = j+1;
    end
end

% computes residual vector
resVec = yData - A*B;
    
% calculates residual
err = sqrt(resVec'*resVec)


% plots the data and the line of best fit
plot(xData,yData,'blue','LineWidth', 6);
hold on
plot(xData,f,'red','LineWidth', 4);
legend('Data','Best Polyfit');
xlabel('xData');
ylabel('yData');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
% a. For N=N=10 the residual is 2.7347. For N=50 the residual is 5.1501e-04.
% For N=250 the residual is .0011.
%
% b. We have seen cos(x) written as a polynomial as a taylor series.
% The coeffients are 1/(2n)!. The n goes from 0 to infinity. 
% 
% c. When N=250, the coefficients were 
%    0.9999
%    0.0000
%   -0.4998
%   -0.0000
%    0.0416
%    0.0000
%   -0.0014
%   -0.0000
%    0.0000
%    0.0000
%   -0.0000
%   -0.0000
%    0.0000
% 
%  d. yes, they are close to the same coefficents.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%