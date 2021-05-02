function [y] = func123_booger(x)
c2 = 1/70*(8 -12*sin(log(2)) - 4*cos(log(2)));    
c1 = 11/10 - c2;

y = c1*x + c2/x - 3/10*sin(log(x)) - 1/10*cos(log(x));
end

