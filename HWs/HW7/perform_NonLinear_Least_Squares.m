%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: This algorithm performs non-linear least squares to find
% a best fit function through the data.
%
% Author: Corey Ong
%
% Date: 12/7/19
%
% Institution: The College of New Jersey (TCNJ)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function perform_NonLinear_Least_Squares()

% Initialize N
N = 2500;

% Initialize tolerance
tol = 1e-5;

%initialize the error
err = 1;

% calls script
data = give_NonLinear_Least_Squares_Data(N);
xData = data(:,1);
yData = data(:,2);

%beta vector
betaVec = [1 0.5 0.3]'; 

while err > tol
   
    for i=1:N
        
        expy = exp((-(xData(i)-betaVec(2))^2)/(2*betaVec(3)^2));
        
        J(i,1) = expy;
        J(i,2) = betaVec(1)*((xData(i)-betaVec(2))/(betaVec(3)^2))*expy;
        J(i,3) = betaVec(1)*((xData(i)-betaVec(2))^2/(betaVec(3)^3))*expy;
    end
    
    for i=1:N
        expy = exp((-(xData(i)-betaVec(2))^2)/(2*betaVec(3)^2));
        
        rVec(i) = yData(i) - betaVec(1)*expy;
    end
    
    pseudoInv = inv(J' * J) * J';
    betaNVec = betaVec + pseudoInv*rVec';
    
  
    
    %calculate l^2 norm of residual vector
    err = sqrt((betaNVec-betaVec)' * (betaNVec-betaVec));
    
      %set beta vector to the new beta vector
    betaVec = betaNVec;
end

err


for i=1:N
    expy = exp(-(xData(i)-betaVec(2))^2/(2*betaVec(3)^2));
    
    regData(i) = betaVec(1)*expy;
end

%create a new figure for the plot
figure(2);
plot(xData,yData,'k.','Color','blue','MarkerSize',20)
hold on
plot(xData,regData,'Color','red','LineWidth',4)
legend('Data','Model Fit');
xlabel('x');
ylabel('y');