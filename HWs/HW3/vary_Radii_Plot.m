%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author:   Corey Ong
%
% Date:     10/11/19
%
% FUNCTION: plots the estimated probabilities for a particular radius 
%           vs radius
%   
% 
% The estimated probabilites of 
% P(0.5) = 0, P(0.1)= 1.6017 P(0.01)=1.9601
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function vary_Radii_Plot()

rVec= [0.01:0.005:0.10  0.1:0.01:0.5];

est_radii_Vec = zeros(size(rVec));

N = 1e5;

for j=1:length(rVec)
    est_radii_Vec(j) =  estimate_Coin_In_Square_Probability(rVec(j),N);
    
end

lw =5;
fs = 28;
ms = 30;

plot(rVec,est_radii_Vec,'r.','Linewidth',lw,'MarkerSize',ms); hold on;
xlabel('radius')
ylabel('probability')
set(gca,'FontSize',fs);


