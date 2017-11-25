## Trabalho de Otimizaçao II

## Exercicio 4 - Sistema de Filas

################################################################################

## Autores:
##    Daniel ... (...)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas ... (...)

################################################################################

## A funçao criada calcula o tempo de espera no sistema para cada cliente.
## Recebe como parametro :
## - s (numero de atendentes do sistema de fila)
## - lambda (taxa de chegada - numero de clientes por minuto)
## - mu (taxa de atendimento - numero de clientes por minuto)
## - Wq (tempo de espera na fila para cada cliente)

## Retorno:
##	- W: tempo de espera no sistema para cada cliente

################################################################################


function W = compute_W(s, lambda, mu, Wq)
    if s == 1 
       W =  1/(mu-lambda);
    else
       W = Wq + (1/mu);
    end
end