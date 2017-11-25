################################################################################

## Autores:
##    Daniel ... (...)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas ... (...)

################################################################################

function Pn = compute_p(p, ro, lambda, mu, s, p0)
    if s == 1
        Pn = (1-ro)*(ro^p);
    else
    %if p == 1
       if 0 <= p && p <= s
           Pn = (((lambda/mu)^p)/factorial(p))*p0;
       elseif p > s
           Pn = (((lambda/mu)^p)/(factorial(s)*(s^(p-s))))*p0;
       end
   %end
    end
end
