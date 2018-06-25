function [ output_args ] = MinQuadTeste( x,y )
    n = length(x);
 
    % Passo 2 - Analizar os dados e decidir qual curva utilizar
    plot(x,y,'.');

    % Passo 3 - Utilizar Método dos mínimos quadrados para encontrar os 
    %parametros (a,b,c...). Para não confundir iremos chamá-lo de theta (th). 
    %Portanto, y_ap = A*th 
 
    A = [x.^5 x.^4 x.^3 x.^2 x x.^0];
 
    th = inv(A'*A)*A'*y;%equação normal retorna o th
    th2 = pinv(A)*y;
 
    y_ap = A*th;
    hold on
    plot(x, y_ap,'r')
 
    e  = y - y_ap;
    E = (e'*e)/n % sum(e.^2) = e'*e
end
