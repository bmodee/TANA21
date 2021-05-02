function [k,f] = PBODE2(a, b, cl, cr, N)
h = (b-a)/N;
% syms x;
r1 = @(x) -1+(h/x);
r2 = @(x) -1-(h/x);
s = @(x) (((2*h^2)/(x^2))+2);
A = diag(arrayfun(r1,a+h:h:b-2*h),-1) + diag(arrayfun(s,a+h:h:b-h)) + diag(arrayfun(r2,a+2*h:h:b-h),1);
disp(A);
for i = 1:N-1
    x = a + h*i;
    t(i) = sin(log(x))/x^2;
    if i == 1
        y0(i) = -r1(x)*cl;
    elseif i == N-1
        y0(i) = -r2(x)*cr;
    else
        y0(i) = 0;
    end
end

t = t.';
y0 = y0.';
B = -h^2*t+y0;
disp(B);

phi = ones(1,N-1)*((b-a)/2);

f = zeros(1,N+1);
f(1) = cl;
f(end) = cr;

[k,f(2:end-1)] = SOR(A, B, phi, 1.1725, 1e-9);
end

