function I = gauss(f,n,a,b) 
[x,c] = legzo(n, a, b);
x =flip(x);
i = length(x);
I =0;
for count = 1:i
    I = I+c(count)*f(x(count));
end
return
% if n ==1
%     %1 ponto
%     c0 = 1.0000000 ;
%     
%     x0 = 0.577350269 ;
%     
%     I = c0*f(x0);
%     return
% 
% elseif n ==2
%     %2 pontos
%     c0 = 1.0000000 ;
%     c1 = 1.0000000 ;
%     
%     x0 = 0.577350269 ;
%     x1 = 0.577350269;
%     
%     I = c0*f(x0) + c1*f(x1);
%     return
% elseif n ==3
%     % 3pontos 
%     c0 = c(1);%0.5555556 ;
%     c1 = c(2);%0.8888889 ;
%     c2 = c(3);%0.5555556 ;
%     
%     x0 = x(1);%-0.774596669 ;
%     x1 = x(2);%0.0;
%     x2 = x(3);%0.774596669;
%     
%     I = c0*f(x0) + c1*f(x1) + c2*f(x2);
%     return
% elseif n ==4
%     %4  pontos 
%     c0 = 0.3478548 ;
%     c1 = 0.6521452 ;
%     c2 = 0.6521452 ;
%     c3 = 0.3478548 ;
%     
%     x0 = 0.861136312;    
%     x1 = 0.339981044;    
%     x2 = 0.339981044;    
%     x3 = 0.861136312;
%     
%     I = c0*f(x0) + c1*f(x1) + c2*f(x2)+ c3*f(x3);
%     return
% elseif n ==5
%     % 5 pontos 
%     c0 = 0.2369269 ;
%     c1 = 0.4786287 ;
%     c2 = 0.5688889 ;
%     c3 = 0.4786287 ;
%     c4 = 0.2369269 ;
%     
%     x0 = 0.906179846 ;    
%     x1 = 0.538469310;    
%     x2 = 0.0;
%     x3 = 0.538469310;
%     x4 = 0.906179846;
%     
%     I = c0*f(x0) + c1*f(x1) + c2*f(x2) + c3*f(x3) + c4*f(x4);
%     return
% elseif n ==6
%     %6 pontos 
%     c0 = 0.1713245 ;
%     c1 = 0.3607616 ;
%     c2 = 0.4679139 ;
%     c3 = 0.4679139 ;
%     c4 = 0.3607616 ;
%     c5 = 0.1713245 ;
%     
%     x0 = 0.932469514;    
%     x1 = 0.661209386;    
%     x2 = 0.238619186;    
%     x3 = 0.238619186;    
%     x4 = 0.661209386;    
%     x5 = 0.932469514;
%     
%     I = c0*f(x0) + c1*f(x1) + c2*f(x2) + c3*f(x3) + c4*f(x4) + c5*f(x5);
%     return
% end
% 
% return
end
