function [k, x] = SOR(A, b,phi,w,tol)
    n = length(A);
    max_iter = 100000000000;
    
%  Successive Over-relaxation
%
%   inputs: 
%
%   A - matirx
%   b - solution
%   w - omega
%   x0 - initial guess value
%   tol - tolerance
%
%   output:
%    
%   x
%   k
%
% Algorithm:
% Choose an initial guess ϕ to the solution
% repeat until convergence
%   for i from 1 until n do
%     σ ← 0
%     for j from 1 until n do
%       if j ≠ i then
%         σ ← σ + a i j ϕ j
%       end if
%     end (j-loop)
%     ϕ i ← ( 1 − ω ) ϕ i + ω / a i i ( b i − σ )
%   end (i-loop)
%   check if convergence is reached
% end (repeat)
%

x = zeros(1,n);
    for k = 1:max_iter
      x = phi;
      for i = 1:n
            sigma = 0;
            for j = 1:n
                if j ~= i
                    sigma = sigma + A(i,j)*phi(j);
                end
            end
        phi(i) = (1 - w)*phi(i) + (w/A(i,i))*(b(i) - sigma); 
      end
      if norm(phi-x) < tol
          break;
      end
    end    
end
