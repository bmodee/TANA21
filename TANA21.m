%%



%%
x=0;
(1-cos(x))/x^2;


%%
syms x;
disp (limit(((1-cos(x))/x^2), x, 0));


%%          

x = 0.0004;
disp (1- (x^2/2) + (x^4/24) + (x^6/720));


%%

e = exp(1);
n = 1;
disp ('n!:')
disp (factorial(n))
disp ('Stirling:')
disp ((sqrt(2 * pi * n)) * ((n/e)^n));
disp ('Absolute Error:');
disp (factorial(n)-(sqrt(2 * pi * n)) * ((n/e)^n));
disp ('Relative Error:');
disp ((factorial(n)-(sqrt(2 * pi * n)) * ((n/e)^n))/(factorial(n)));

%%


f = @(x) 3*x-cos(2*pi*x)
fprime = @(x) 3+sin(2*pi*x)*2*pi

newtonRaphson(f, fprime, 0.4, (1*10^-9));


%%


x = linspace(-1, 3, 100);
y1 = x;
y2 = 2 - x;
plot(x, y1, x, y2);

%%
x = linspace(-1, 3, 100);
z1 = (19/10 - 19/10 * x);
z2 = 2 - x;
plot(x, z1, x, z2);


%%

A = [0.913 0.659; 0.457 0.330];
b = [0.254; 0.127];
x = A\b;
z = [1 ;-1];
c = x-z;
disp(c);

%%

A = [0.913 0.659; 0.457 0.330];
b = [0.2539949; 0.1272061];
b1 = A\b;

%%

A = [0.913 0.659; 0.457 0.330];
b = [0.252428; 0.126213];
b2 = A\b;


%%

r1 = [0.2539949; 0.1272061]- A*b1;
disp(norm(r1, 1));

r2 = [0.2539949; 0.1272061] - A*b2;
disp (norm(r2,1));

disp('det')
disp(det(A))
disp('cond')
disp(cond(A,1))


%%



