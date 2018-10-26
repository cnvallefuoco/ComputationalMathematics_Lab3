function y = logistic_growth(r, k, x)
%below is the equation for HW problem 3
y = (r.*x.*(1-(x./k)))-((x.^2)./(1+(x.^2)));