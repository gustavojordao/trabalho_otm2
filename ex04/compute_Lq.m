## Trabalho de Otimizaçao II

## Exercicio 4 - Sistema de Filas

################################################################################

## Autores:
##    Daniel de Aguiar Gonçalves (201222040158)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas Ramon dos Santos Alves (201222040115)

################################################################################

## A funçao criada calcula o comprimento esperado da fila.
## Recebe como parametro :
## - s (numero de atendentes no sistema de fila)
## - lambda (taxa de chegada - numero de clientes por minuto)
## - mu (taxa de atendimento - numero de clientes por minuto)
## - P0 (probabilidade de ter 0 clientes na fila)
## - ro (fator de utilizacao)

## Retorno:
## 	- Lq: comprimento esperado da fila

################################################################################


function Lq = compute_Lq(s, lambda, mu, P0, ro)
    if s == 1 
       Lq = (lambda^2)/(mu*(mu-lambda)); 
    else
       Lq = (P0*((lambda/mu)^s)*ro)/((factorial(s))*(1-ro)^2);
    end
end
