%%
function [x,k] = gaussSeidel(A, b,x0,tol)
    n = length(A);
%  Gauss-Seidel iteration which overwrites the current approximate solution
%  with the new approximate solution

%
max_iter = 250;
for k = 1:max_iter
    for i = 1:n
        sum = 0;
        for j = 1:n
            if j ~= i
                sum = sum + (A(i,j))*(x0(j)); 
            end
        end
        xk = x0;
        x0(i) = ((b(i)-sum)/A(i,i));
        
    end
    r = (x0- xk);
    if norm(r) < tol*norm(x0)
        disp(k);
        disp(x0);
        return
    end
end
end

%%