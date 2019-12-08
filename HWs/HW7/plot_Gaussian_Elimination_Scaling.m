%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: runs the previous scripts for a variety of N values. This makes
% to plots that illustrate operation count vs size of matrix.
%
% Author: Corey Ong
%
% Date: 12/7/19
%
% Institution: The College of New Jersey (TCNJ)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function plot_Gaussian_Elimination_Scaling()

%set a vector of N values
NVec = [2:1:100];

for i=1:length(NVec)
    OpCount(i) = go_Go_Gaussian_Elimination(NVec(i));
end

%plots illustrate operation count vs size of matrix
figure(1);
loglog(NVec,OpCount,'blue','LineWidth',5)
xlabel('Size of the Matrix: N')
ylabel('Operation Count')

figure(2);
plot(NVec,OpCount,'blue','LineWidth',5)
xlabel('Matrix Dimension: N')
ylabel('Operation Count')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% a. As the size of the matrix increases, the number of operations required
% to compute also increases. As a N is added, there requires an additional 
% operation amount to row reduce.

