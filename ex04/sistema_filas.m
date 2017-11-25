################################################################################

## Autores:
##    Daniel ... (...)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas Ramon dos Santos Alves (201222040115)

################################################################################

function sistema_filas(lambda, mu)
    
    resultados = [];
    
    coluna = [];
    coluna = [cellstr('s')];
    coluna = [coluna; cellstr('ro')];
    coluna = [coluna; cellstr('P0')];
    
    for p = 1:10
        if p == 1 || p == 2 || p == 5 || p == 10
            coluna = [coluna; cellstr(sprintf('P%d', p))];
        end
    end
    
    coluna = [coluna; cellstr('Lq')];
    coluna = [coluna; cellstr('L')];
                                  
    coluna = [coluna; cellstr('Wq')];
    coluna = [coluna; cellstr('W')];
    
    for t = 0:5
        if t == 0 || t == 1 || t == 2 || t == 5
            coluna = [coluna; cellstr(sprintf('P(Wq > %d)', t))];
        end
    end
 
    cabecalho = coluna;
    
 
    for s = 1:4
       
       coluna = [];
       coluna = [coluna; s];

       ro = lambda/(s * mu);
       coluna = [coluna; ro];
        
       P0 = compute_p0(ro, s, lambda, mu);
       coluna = [coluna; P0];
       
       for p = 1:10
           if p == 1 || p == 2 || p == 5 || p == 10
                Pn = compute_p(p, ro, lambda, mu, s, P0);
                coluna = [coluna; Pn];
           end
       end
       
       Lq = compute_Lq(s, lambda, mu, P0, ro);
       coluna = [coluna; Lq];
       
       L = compute_L(s, lambda, mu, Lq);
       coluna = [coluna; L];
       
       Wq = compute_Wq(s, lambda, mu, Lq);
       coluna = [coluna; Wq];
       
       W = compute_W(s, lambda, mu, Wq);
       coluna = [coluna; W];
       
       for t = 0:5
           if t == 0 || t == 1 || t == 2 || t == 5
                PWq = compute_PWq(p, ro, lambda, mu, s, P0, t);
                coluna = [coluna; PWq];
           end
       end
       
       resultados = [resultados coluna];
       
    end
    
    for i = 1:15
        printf("\n%15s\t", char(cabecalho(i)));
        for j = 1:4
            printf("%15d\t", resultados(i, j));
        end
    end
    
    printf('\n');
    
end
