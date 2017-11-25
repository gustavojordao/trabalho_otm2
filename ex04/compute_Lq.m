################################################################################

## Autores:
##    Daniel ... (...)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas ... (...)

################################################################################

function Lq = compute_Lq(s, lambda, mu, P0, ro)
    if s == 1 
       Lq = (lambda^2)/(mu*(mu-lambda)); 
    else
       Lq = (P0*((lambda/mu)^s)*ro)/((factorial(s))*(1-ro)^2);
    end
end
