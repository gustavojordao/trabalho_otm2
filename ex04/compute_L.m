################################################################################

## Autores:
##    Daniel ... (...)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas ... (...)

################################################################################

function L = compute_L(s, lambda, mu, Lq)
    if s == 1
        L = lambda/(mu - lambda);
    else 
        L = Lq + (lambda/mu);
    end
end
