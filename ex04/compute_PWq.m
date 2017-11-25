################################################################################

## Autores:
##    Daniel ... (...)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas ... (...)

################################################################################

function PWq = compute_PWq(p, ro, lambda, mu, s, P0, t)
    if s == 1
       PWq = ro*exp(-mu*(1-ro)*t); 
    else
       PWq0 = compute_PWq0(p, ro, lambda, mu, s, P0); 
       PWq = (1-PWq0)*exp(-s*mu*(1-ro)*t);
    end
end
