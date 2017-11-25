## Trabalho de Otimizaçao II

## Exercicio 4

## Visando analisar o comportamento sistemas de fila M/M/s, construa um script
## com uma função que receba a taxa de chegada, lambda (número de clientes por minuto), 
## e a taxa de atendimento, mu (número de clientes por minuto). Para s pertencente {1,2,3,4}, 
## {1,2,3,4}, tal script deve apresentar uma tabela comparativa apresentandos os valores 
## das grandezas P0, P1, P2, P5, P10, L, Lq, W, Wq, P(Wq>0), P(Wq>1), P(Wq>2) e P(Wq>5).

################################################################################

## Autores:
##    Daniel ... (...)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas ... (...)

################################################################################

## A funçao criada recebe como parametro lambda (taxa de chegada - numero de clientes por minuto)
## e a mu (taxa de atendimento - numero de clientes por minuto).

################################################################################

## Argumentos:
##    premios: Recebe a matriz de premios associada ao jogo.
##             As linhas representam as estrategias do Jogador 1.
##             As colunas representam as estragias do Jogador 2.
## Retorno:
##    prob1: Probabilidades de vitoria do Jogador 1 de acordo com cada estrategia
##    prob2: Probabilidades de vitoria do Jogador 2 de acordo com cada estrategia
##    valor: Valor da soluçao otima do jogo

clear;
close all;
clc;

sistema_filas(2,3);
