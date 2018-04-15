A = [ %matriz de equacoes
    3, -1,2;
    1,1,0;
    -2,3,-4];

b = [3; %matriz resposta 
     2;
     3];

m = 100; %iteracoes
E = 0.000001; %erro

n = length(b);

XO = zeros(1,n);
X = XO; %resposta
k=0;

norma = 1;

while norma>E
  k= k+1;
  fprintf('\niteração %d\n',k);
  for i = 1 : n  % loop of equations
    Sum = 0;
    for j = 1 : n %loop of summation
      if j ~= i
        Sum = Sum + A(i,j)* X(j);
      end
    end
    X(i) = (b(i)-Sum)/A(i,i);
    fprintf('incognita %d',i);  
    fprintf('%10.6f\n',X(i));    
  end
  norma = norm(XO-X);
  XO = X;
  if k>=m
    break
  end
end
