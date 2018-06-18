%x = (1:0.1:5)';
%n = length(x);
%y = (x-3).*(x-1).*(x-4).*(x-4.5).*(x+1) + 8*cos(x) + 5*rand(n,1);
 
x = [1 2 3 4 5 6 7 8 9 10]';
n = length(x);
y = [1.3 3.5 4.2 5 7 8.8 10.1 12.5 13 15.6]';
 
% Passo 2 - Analizar os dados e decidir qual curva utilizar
plot(x,y,'.');
 
% Passo 3 - Utilizar Método dos mínimos quadrados para encontrar os 
%parametros (a,b,c...). Para não confundir iremos chamá-lo de theta (th). 
%Portanto, y_ap = A*th 
 
A = [x.^5 x.^4 x.^3 x.^2 x x.^0];
 
th = inv(A'*A)*A'*y;
th2 = pinv(A)*y;
 
y_ap = A*th;
hold on
plot(x, y_ap,'r')
 
e  = y - y_ap;
E = (e'*e)/n % sum(e.^2) = e'*e