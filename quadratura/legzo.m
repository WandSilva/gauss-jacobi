function [x,c]=legzo(n, a, b)
%retorna os zeros do polinomio de Legendre no intervalo A,B e os
% e o peso dos foicificientes para a quadratura de gauss
%n    --- Ordem do polinomio
%a    --- limite inferior
%b    --- limite superior
%x(n) --- zeros do polinomio de Legendre
%c(n) --- coeficientes de peso

if nargin == 1
    a = -1;
    b =  1;
end;
x = zeros(1, n);
c = zeros(1, n);
m = (n+1)/2;
h = b-a;

for ii=1:m
    z = cos(pi*(ii-.25)/(n+.5));
    z1 = z+1;
    while abs(z-z1)>eps
        p1 = 1;
        p2 = 0;
        for jj = 1:n
            p3 = p2;
            p2 = p1;
            p1 = ((2*jj-1)*z*p2-(jj-1)*p3)/jj; 
        end
        pp = n*(z*p1-p2)/(z^2-1); 
        z1 = z;
        z = z1-p1/pp;
    end
    x(ii) = z; 
    x(n+1-ii) = -z;    
    c(ii) = h/((1-z^2)*(pp^2)); 
    c(n+1-ii) = c(ii);
end

if a ~= -1 || b ~= 1
    x = (x+1)*(h/2) + a;    
end