function [pnx] = Lagrange_interpolation(z,x,y,n)
%%
%  Implementation to evaluate an interpolating polynomial p_n(x) 
%  at the point x = z. The polynomial uses the standard Lagrange
%  basis functions.
%
%  INPUT:
%
%     z    - 1x1 value to evaluate
%     x,y,n
%
%  OUTPUT:
%
%     pnx - value of the polynomial interpolant at x = z
%

%%
%  compute the polynomial interpolation sum evaluated at x = z
   pnx = 0;
   for i = 1:n+1
    li = 1;
      for j = 1:n+1
        if j~=i
            li = li * ((z-x(j)) / (x(i)-x(j)));
        end
      end
      pnx = pnx + y(i)*li;
   end
disp(pnx);
end
