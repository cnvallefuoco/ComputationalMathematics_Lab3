function [global_error, t_vals, approx_sol] = approx_ode(f, a, b, initial_val, N)

h = (b-a)./N; 
t_vals = a:h:b;
approx_sol = (zeros(1, N+1));
approx_sol(1) = initial_val;
for i = 2:N+1 
    approx_sol(i) =  approx_sol(i-1) + h*feval('f',t_vals(i-1),approx_sol(i-1));  
end 

%global_error = abs((-b-(1/(exp(b)+1))) - approx_sol(end)); %for part 2a
global_error = abs((-b-1) - approx_sol(end)); %for part 2b

t_vals; %outputs the t values when the semicolon is removed
approx_sol %outputs the vector of approximate solutions


% BELOW IS THE CODE USED TO PLOT APPROX AND TRUE

% hold on 
% plot(approx_sol,'b*');
% plot(-t_vals-(1./(exp(t_vals)+1)),'r', 'LineWidth',2);
% legend('Approximate Solution','True Solution'); %these need to be in the same order as your plots
% hold off

end