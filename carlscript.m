xVals = 1:0.1:2;

for i = 1:11
    y(i) = func123_booger(xVals(i));
    e(i) = y(i) - f(i);
end

e
