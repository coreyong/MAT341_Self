%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author:   Corey Ong
%
% Date:     10/11/19
%
% FUNCTION: estimate the probability that when tossed into the square, 
%           the coin is contained fully within the square.
%           
%           input: (1) radius
%                  (2) N trials
%
%           returns: probability
%
% N = 1e5 seems like a reasonable amount of trials. This is more difficult
% than the coin flip case because we have to take into account the grid. 
% I approached this problem by using if statements to test if the coin in 
% in the grid while counting if it is.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function prob = estimate_Coin_In_Square_Probability(r,N)

lands = 0;
lands1 =0;
lands2 =0;

%for loop to count number of hits
for i=1:N
    x=rand();
    y=rand();
    
   
    % if coin lands in grid, counter is initiated
    if (x+r<1)&&(x-r>0)
        lands2 = lands2 +1;
    end
    if (y+r<1)&&(y-r>0)
        lands1 = lands1 +1;
    end
    
    lands = lands1 + lands2;
end

%computes probability
prob = lands/N;

disp(prob);



    
    
