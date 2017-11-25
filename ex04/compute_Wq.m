################################################################################

## Autores:
##    Daniel ... (...)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas ... (...)

################################################################################

function Wq = compute_Wq(s, lambda, mu, Lq)
    if s == 1
       Wq = lambda/(mu*(mu-lambda)); 
    else
       Wq = Lq/lambda;
    end
end
