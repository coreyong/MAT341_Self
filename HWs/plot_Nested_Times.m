%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: plots Nested Times
%
% Author: Corey Ong
%
% Date: 9/20/19
%
% Institution: The College of New Jersey (TCNJ)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function plot_Nested_Times()

%vector of N values
N= [1:1:10  20:10:100  125 150 175 200 225 250];

length(N)

%plots points
for i=1:length(N)
    yVec(i) = calculate_Nested_For_Loop_Time( N(i))
end

%plotting attributes
lw = 5;
fs = 28;

%edit graph attributes
loglog(N,yVec,'m','LineWidth',lw); hold on;
xlabel('N');
ylabel('Time');
set(gca,'FontSize',fs);