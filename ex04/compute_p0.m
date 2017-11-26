## Trabalho de Otimizaçao II

## Exercicio 4 - Sistema de Filas

################################################################################

## Autores:
##    Daniel de Aguiar Gonçalves (201222040158)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas Ramon dos Santos Alves (201222040115)

################################################################################

## A funçao criada calcula a probabilidade de nenhum cliente estar na fila.
## Recebe como parametro :
## - ro (fator de utilizacao)
## - s (numero de atendentes no sistema de fila)
## - lambda (taxa de chegada - numero de clientes por minuto)
## - mu (taxa de atendimento - numero de clientes por minuto)

## Retorno:
## 	- P0: probabilidade de nenhum cliente se encontrar na fila

################################################################################


function P0 = compute_p0(ro, s, lambda, mu)
    if s == 1
        P0 = 1-ro;
    end
    
    if s > 1
        sum = 0;
        for n = 0 : s-1
            aux = ((((lambda/mu)^n))/(factorial(n))) + ((((lambda/mu)^s)/factorial(s)) * (1/(1-(lambda/(s*mu)))));
            sum = sum + aux;
        end
        P0 = 1/sum;
    end
end
