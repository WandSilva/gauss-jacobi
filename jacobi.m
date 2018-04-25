function [] = jacobi( matrizAumentada)
    [m,n] = size(matrizAumentada);
    A = zeros(n-1);
    b = zeros(m,1);
    for j=1:m
        for i =1:n
            if i~=n
                A(j,i) = matrizAumentada(j,i);
            else
                b(j,1) = matrizAumentada(j,i);
            end
        end
    end

    m = 1000; %iteracoes
    E = 0.000001; %erro

    n = length(b);
    XO = zeros(1,n);
    X = XO; %resposta
    k=0;

    norma = 1;

    fprintf('Iniciando Método Iterativo\n')
    fprintf('iteração   |');
    for t = 1:n
        fprintf('  incognita %d  ',t);
    end

    while norma>E
        k= k+1;
        fprintf('\n      %d    |',k);
        for i = 1 : n
            Sum = 0;
            for j = 1 : n
                if j ~= i
                    Sum = Sum + A(i,j)* X(j);
                end
            end
            X(i) = (b(i)-Sum)/A(i,i);

            fprintf(' %10.6f   |',X(i));
        end
        norma = norm(XO-X);
        XO = X;
        if k>=m
            break
        end

    end
    end
