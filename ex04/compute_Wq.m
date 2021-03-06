## Trabalho de Otimizaçao II

## Exercicio 4 - Sistema de Filas

################################################################################

## Autores:
##    Daniel de Aguiar Gonçalves (201222040158)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas Ramon dos Santos Alves (201222040115)

################################################################################

## A funçao criada calcula o tempo de espera na fila para cada cliente.
## Recebe como parametro :
## - s (numero de atendentes do sistema de fila)
## - lambda (taxa de chegada - numero de clientes por minuto)
## - mu (taxa de atendimento - numero de clientes por minuto)
## - Lq (comprimento esperado da fila)

## Retorno:
##	- Wq: tempo de espera na fila para cada cliente

################################################################################


function Wq = compute_Wq(s, lambda, mu, Lq)
    if s == 1
       Wq = lambda/(mu*(mu-lambda)); 
    else
       Wq = Lq/lambda;
    end
end
