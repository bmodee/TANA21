function [X,L] = build_Interpolation(M,xVals,yVals,n)
    X = linspace(xVals(1),xVals(end),M);
    func1 = @(x) gamma(x);
    for k = 1:M
        L(k) = Lagrange_interpolation(1.5,xVals,yVals,n);
    end
    plot(X,func1(X),'-k',X,L,'--r',xVals,yVals,'rd','MarkerFaceColor','r','MarkerSize',7);
    res = norm(func1(1.5)- L,inf);
    disp("hello mr sir look at me woaa");
    disp(res);
end