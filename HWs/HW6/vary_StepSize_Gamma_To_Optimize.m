%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: Runs the Gradient Descent 1 code from Problem 1 for a variety of 
% step-sizes, gamma, to find which gamma seems to minimize the total number 
% of iterations needed to achieve 1e ? 10 accuracy
%
% Author: Corey Ong
%
% Date: 11/20/19
%
% Institution: The College of New Jersey (TCNJ)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function vary_StepSize_Gamma_To_Optimize()

%gamma vector 
gammaVec = [0.1: 0.1: 1.9];

for i=1:length(gammaVec)
    Nvec(i) = Gradient_Descent_1(1e-10,gammaVec(i)); %loop over gamma vector 
end

%plots number of iterations vs gamma
semilogx(gammaVec,Nvec,'blue','LineWidth',5)

%label axes
xlabel('Gamma, Step Size')
ylabel('Number of Iterations')

legend('Fixed Step') 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% a. The best step size appears to be 1.