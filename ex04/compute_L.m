## Trabalho de Otimizaçao II

## Exercicio 4 - Sistemas de Filas

################################################################################

## Autores:
##    Daniel de Aguiar Gonçalves (201222040158)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas Ramon dos Santos Alves (201222040115)

################################################################################

## A funçao criada calcula o numero de clientes esperando no sistema de fila.
## Recebe como parametro :
## - s (numero de atendentes no sistema de fila)
## - lambda (taxa de chegada - numero de clientes por minuto)
## - mu (taxa de atendimento - numero de clientes por minuto)
## - Lq (comprimento esperado da fila)

## Retorno:
##	- L: numero de clientes esperando no sistema de fila

################################################################################


function L = compute_L(s, lambda, mu, Lq)
    if s == 1
        L = lambda/(mu - lambda);
    else 
        L = Lq + (lambda/mu);
    end
end
