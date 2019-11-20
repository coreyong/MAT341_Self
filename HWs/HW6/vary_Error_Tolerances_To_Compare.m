%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: compares the iteration counts for both versions of the Gradient
% Descent. 
%
% Author: Corey Ong
%
% Date: 11/20/19
%
% Institution: The College of New Jersey (TCNJ)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function vary_Error_Tolerances_To_Compare()

%error vector
errTolVec= [1e-1  1e-2  1e-3  1e-4  1e-5  1e-6  1e-7  1e-8  1e-9  1e-10  1e-11];

%runs through error tolerances and saves iterations
for i=1:length(errTolVec)
    grad_d1(i) = Gradient_Descent_1(errTolVec(i),0.5);
    grad_d2(i) = Gradient_Descent_2(errTolVec(i));
end

figure(1)
semilogx(errTolVec,grad_d1,'b',errTolVec,grad_d2,'r','LineWidth',5)
xlabel('Error Tolerance')
ylabel('Iterations')
legend('Fixed Step','Barzilai-Borwein')

figure(2)
loglog(errTolVec,grad_d1,'b',errTolVec,grad_d2,'r','LineWidth',5)
xlabel('Error Tolerance')
ylabel('Number of Iterations')
legend('Fixed Step','Barzilai-Borwein')

% a. The Fixed Step algorithm converged faster.
% b. The Barzilai-Borwein algorithm converged faster.
% c. The Barzilai-Borwein step size redefines gamma so it converges faster.
% d. I would use the Barzilai-Borwein step-size because I don't need to figure out
% the best fixed step size to use.