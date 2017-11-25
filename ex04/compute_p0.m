################################################################################

## Autores:
##    Daniel ... (...)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas ... (...)

################################################################################

function P0 = compute_p0(ro, s, lambda, mu)
    if s == 1
        P0 = 1-ro;
    end
    
    if s > 1
        sum = 0;
        for n = 0 : s-1
            aux = ((((lambda/mu)^n))/(factorial(n))) + ((((lambda/mu)^s)/factorial(s)) * (1/(1-(lambda/(s*mu)))));
            sum = sum + aux;
        end
        P0 = 1/sum;
    end
end
