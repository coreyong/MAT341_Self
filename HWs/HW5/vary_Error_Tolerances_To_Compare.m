%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: Calls previous algorthims made to run for a variety of 
% error tolerances. Makes 2 plots that illustrate iterations vs tol.
%
% Author: Corey Ong
%
% Date: 11/8/19
%
% Institution: The College of New Jersey (TCNJ)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function vary_Error_Tolerances_To_Compare()

errTolVec = [1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11 1e-12];


%saves number of iterations for golden search
for i=1:length(errTolVec)
    gVec(i) = golden_Search( errTolVec(i) )
end

%saves number of iterations for Successive Parabolic Interpolation
for i=1:length(errTolVec)
    spiVec(i) = successive_Parabolic_Interpolation(errTolVec(i));
end

%saves number of iterations for Newton's 1D optimization
for i=1:length(errTolVec)
    noVec(i) = Newtons_1D_Opt(errTolVec(i));
end

figure(1);
semilogx(errTolVec,gVec,'blue',errTolVec,spiVec,'red',errTolVec,noVec,'black','LineWidth',5);hold on;
xlabel('Error Tolerance')
ylabel('Number of Iterations')
legend('Golden Search', 'Succ. Para. Interp.', 'Newton Method')
    
figure(2);
loglog(errTolVec,gVec,'blue',errTolVec,spiVec,'red',errTolVec,noVec,'black','LineWidth',5);hold on;
xlabel('Error Tolerance')
ylabel('Number of Iterations')
legend('Golden Search', 'Succ. Para. Interp.', 'Newton Method')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% a.) Successive Parabolic Interpolation converges faster to the minimum for less accurate
% tolerances.
% b.) Newton's method converges faster when you increase accuracy
% threshold.
% c.) We can change convergence rates by changing intial guesses.  
