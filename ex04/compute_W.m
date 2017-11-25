################################################################################

## Autores:
##    Daniel ... (...)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas ... (...)

################################################################################

function W = compute_W(s, lambda, mu, Wq)
    if s == 1 
       W =  1/(mu-lambda);
    else
       W = Wq + (1/mu);
    end
end
