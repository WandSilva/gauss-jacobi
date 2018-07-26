%funcao = inline('cos(x)','x');
%funcao = inline('(1-x.^2).^3','x');
funcao = inline('log(2.^x)+cos(x)','x');
tol = 1.e-6;
limiteSuperior = 4;
limiteInferior = 1;
pontos = 5;
%quadratura adaptativa todos estão baseados na regra de simpson
A1 = quad(funcao,limiteInferior,limiteSuperior,tol); %A ANTIGA FUMCAO INTEGRAL
A2 = gauss(funcao,pontos, limiteInferior,limiteSuperior);
A3 = reproducaoQuad(funcao,limiteInferior,limiteSuperior,tol);
fprintf('quad:       %f\ngauss:      %f\nAdaptativa: %f\n',A1,A2,A3);
