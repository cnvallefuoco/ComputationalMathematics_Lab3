%This file is used to solve HW3 problem 3. It calls the function
%logistic_growth.m

%Below are the values for HW problem 3a
r = 4;
k = 20;
h = 0.1;

%Below is the r value for the extra credit
%r = 0.4;
%Using Eulers method for the time stepping starting at t=0;
approx_sol_P =[];

%initialize the solution vectors with initial conditions.
approx_sol_P(1) =2.44; %initial population for 3a
%approx_sol_P(1) = 2.40; %initial population for 3b

 i=2;
 difference=2;

while(difference>.000001) %run until the solution stops changing
    approx_sol_P(i) =  approx_sol_P(i-1) + h*feval('logistic_growth',r, k, approx_sol_P(i-1));
    difference = approx_sol_P(i)-approx_sol_P(i-1);
    i=i+1; 
end

approx_sol_P(end)
hold on
plot(approx_sol_P,'LineWidth',2);
legend('Population'); 
hold off
fprintf('Eventual population is about %d \n',round(approx_sol_P(end)));

    
    


