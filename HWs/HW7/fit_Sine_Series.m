%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: This algorithm performs linear least squares to find a best fit
% function through data.
%
% Author: Corey Ong
%
% Date: 12/8/19
%
% Institution: The College of New Jersey (TCNJ)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function fit_Sine_Series()

M = 40;

%number of data points
N = 500;

xData = linspace(-pi,pi,N);
yData = ((0.25*xData.^2).*cos(xData).^4.*sin(xData).^7)';

% fills vector over number of data points
for i = 1:N
    
    x = xData(i);
    y = yData(i);
    
    for j = 1:M 
         A(i,j) = sin(j*x);
    end
    B(i,:) = y;
end

% beta vector 
beta = (inv(A'*A))*A'*B;

for i = 1:N
    x = xData(i);
    
    %initialize summation matrix
    f(i,1) = 0;
   
    %initialize counter
    j = 1;
    
    while j <= M
        f(i,1) = f(i,1) + beta(j)*sin(j*x); 
        
        %counter
        j = j + 1; 
    end
end

resVec = B - A*beta;
err = sqrt(resVec'*resVec)

figure; plot(xData,yData,'blue','Linewidth', 6);
hold on
plot(xData,f,'red','Linewidth',4)
xlabel('xData');
ylabel('yData');
legend('Data','Best Sine Series Fit')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% a. When N=500: M=5;  the residual is 0.0813, 
%               M=10; the residual is 0.0096, 
%               M=20; the residual is 2.1412e-06, 
%               M=40; the residual is 3.9199e-09
% 
% b. The is the Fourier Sine Series.  
