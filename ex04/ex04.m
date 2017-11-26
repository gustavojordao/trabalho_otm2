## Trabalho de Otimizaçao II

## Exercicio 4

## Visando analisar o comportamento sistemas de fila M/M/s, construa um script
## com uma função que receba a taxa de chegada, lambda (número de clientes por minuto), 
## e a taxa de atendimento, mu (número de clientes por minuto). Para s pertencente {1,2,3,4}, 
## {1,2,3,4}, tal script deve apresentar uma tabela comparativa apresentandos os valores 
## das grandezas P0, P1, P2, P5, P10, L, Lq, W, Wq, P(Wq>0), P(Wq>1), P(Wq>2) e P(Wq>5).

################################################################################

## Autores:
##    Daniel de Aguiar Gonçalves (201222040158)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas Ramon dos Santos Alves (201222040115)

################################################################################

## A funçao criada recebe como parametro :
## - lambda (taxa de chegada - numero de clientes por minuto)
## - mu (taxa de atendimento - numero de clientes por minuto).

## Retorno:
##    Para cada s (numero de atendentes no sistema de fila):
##		- ro: fracao de tempo esperada em que cada atendente se encontra ocupado
## 		- P0, P1, P2, P5, P10: probabilidade de n clientes se encontrarem na fila
##		- L: numero de clientes esperando no sistema de fila
## 		- Lq: comprimento esperado da fila
##		- W: tempo de espera no sistema para cada cliente
##		- Wq: tempo de espera na fila para cada cliente
##		- P(Wq>0), P(Wq>1), P(Wq>2), P(Wq>5): probabilidade do tempo de espera

################################################################################

clear;
close all;
clc;

sistema_filas(2,3);
