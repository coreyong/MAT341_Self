%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author:   Corey Ong
%
% Date:     10/11/19
%
% FUNCTION: finds the probability that the center of the circle is 
%           contained within the trinagle formed between the three points
%
%           input: (1) N, number of trials
%                  
%
%           returns: probability
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function prob = estimate_Triangle_Center_Circle_Probability(N)

center = 0;
length1 = 0;

%for loop finds random numbers and counts when center is in triangle
for i=1:N
x = 4*rand()-2;

y = sqrt(2*pi*rand());

z = 4*rand()-2;

length1 = sqrt(x^2 + y^2); %distance between first 2 points

    %counter
    if z <= length1 
    center = center + 1;
    end
end

%computes probability
est_prob = center/N;

disp(est_prob);


