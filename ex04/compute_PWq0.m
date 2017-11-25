## Trabalho de Otimizaçao II

## Exercicio 4 - Sistema de Filas

################################################################################

## Autores:
##    Daniel ... (...)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas ... (...)

################################################################################

## A funçao criada calcula a probabilidade do tempo de espera ser zero.
## Recebe como parametro :
## - p (numero de clientes)
## - ro (fator de utilizacao)
## - lambda (taxa de chegada - numero de clientes por minuto)
## - mu (taxa de atendimento - numero de clientes por minuto)
## - s (numero de atendentes no sistema de fila)
## - P0 (probabilidade de 0 clientes estarem na fila)

## Retorno:
##	- P(Wq=0): probabilidade do tempo de espera ser zero.

################################################################################

function PWq0 = compute_PWq0(p, ro, lambda, mu, s, P0)
    PWq0 = 0;
    for n = 0:s-1
       aux = compute_p(p, ro, lambda, mu, s, P0);
       PWq0 = PWq0 + aux;
    end
end
