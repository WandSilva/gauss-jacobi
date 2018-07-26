function [result] = reproducaoQuad(f,a,b,eps)
    result = recursive_asr(f,a,b,eps,simpsons_rule(f,a,b));
    return 

function [resultS]  = simpsons_rule(f,a,b)
    c = (a+b) / 2.0;
    h3 = abs(b-a) / 6.0;
    resultS =h3*(f(a) + 4.0*f(c) + f(b));
    return 

function [resultr] = recursive_asr(f,a,b,eps,whole)
    c = (a+b) / 2.0;
    left = simpsons_rule(f,a,c);
    right = simpsons_rule(f,c,b);
    if abs(left + right - whole) <= 15*eps
        resultr = left + right + (left + right - whole)/15.0;
        return  
    end
    resultr = recursive_asr(f,a,c,eps/2.0,left) + recursive_asr(f,c,b,eps/2.0,right);
    return 