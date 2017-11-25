################################################################################

## Autores:
##    Daniel ... (...)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas ... (...)

################################################################################

function sistema_filas(lambda, mu)
    
    for s = 1:4
       fprintf('s = %d\n', s);
       ro = lambda/(s * mu);
       fprintf('ro = %f\n', ro);
        
       P0 = compute_p0(ro, s, lambda, mu);
       fprintf('P0 = %f\n', P0);
       
       for p = 1:10
           if p == 1 || p == 2 || p == 5 || p == 10
                Pn = compute_p(p, ro, lambda, mu, s, P0);
                fprintf('P%d = %f\n', p, Pn);
           end
       end
       
       Lq = compute_Lq(s, lambda, mu, P0, ro);
       fprintf('Lq = %f\n', Lq);
       
       L = compute_L(s, lambda, mu, Lq);
       fprintf('L = %f\n', L);
       
       Wq = compute_Wq(s, lambda, mu, Lq);
       fprintf('Wq = %f\n', Wq);
       
       W = compute_W(s, lambda, mu, Wq);
       fprintf('W = %f\n', W);
       
       for t = 0:5
           if t == 0 || t == 1 || t == 2 || t == 5
                PWq = compute_PWq(p, ro, lambda, mu, s, P0, t);
                fprintf('P(Wq > %d) = %f\n', t, PWq);
           end
       end
    end

end
