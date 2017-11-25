################################################################################

## Autores:
##    Daniel ... (...)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas ... (...)

################################################################################

function PWq0 = compute_PWq0(p, ro, lambda, mu, s, P0)
    PWq0 = 0;
    for n = 0:s-1
       aux = compute_p(p, ro, lambda, mu, s, P0);
       PWq0 = PWq0 + aux;
    end
end
