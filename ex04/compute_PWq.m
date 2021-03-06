## Trabalho de Otimizaçao II

## Exercicio 4 - Sistema de Filas

################################################################################

## Autores:
##    Daniel de Aguiar Gonçalves (201222040158)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas Ramon dos Santos Alves (201222040115)

################################################################################

## A funçao criada calcula a probabilidade do tempo de espera.
## Recebe como parametro :
## - p (numero de clientes)
## - ro (fator de utilizacao)
## - lambda (taxa de chegada - numero de clientes por minuto)
## - mu (taxa de atendimento - numero de clientes por minuto)
## - s (numero de atendentes no sistema de fila)
## - P0 (probabilidade de 0 clientes estarem na fila)
## - t (tempo de espera)

## Retorno:
##	- P(Wq>t): probabilidade do tempo de espera t

################################################################################


function PWq = compute_PWq(p, ro, lambda, mu, s, P0, t)
    if s == 1
       PWq = ro*exp(-mu*(1-ro)*t); 
    else
       PWq0 = compute_PWq0(p, ro, lambda, mu, s, P0); 
       PWq = (1-PWq0)*exp(-s*mu*(1-ro)*t);
    end
end
