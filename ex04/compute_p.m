## Trabalho de Otimizaçao II

## Exercicio 4 - Sistema de Filas

################################################################################

## Autores:
##    Daniel ... (...)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas ... (...)

################################################################################

## A funçao criada calcula a probabilidade de n clientes se encontrarem na fila.
## Recebe como parametro :
## - p (numero de clientes na fila)
## - ro (fator de utilizacao)
## - lambda (taxa de chegada - numero de clientes por minuto)
## - mu (taxa de atendimento - numero de clientes por minuto)
## - s (numero de atendentes no sistema de fila)
## - P0 (probabilidade de ter 0 clientes na fila)

## Retorno:
## 	- Pn: probabilidade de n clientes se encontrarem na fila

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
