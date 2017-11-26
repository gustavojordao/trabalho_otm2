## Trabalho de Otimizaçao II

## Exercicio 2

## Seja a cadeia de Markov representada pela matriz de transição apresentada
## abaixo. Suponha que a cadeia inicie no estado 1. Construa um script que simule 1000
## vezes e estime, separadamente, os valores de probabilidades de a cadeia cair nos estados
## absorventes 0 e 4. Em cada simulação deve ser observado, no máximo, 100 transições.

################################################################################

## Autores:
##    Daniel de Aguiar Gonçalves (201222040158)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas Ramon dos Santos Alves (201222040115)

################################################################################

clear;
close all;
clc;

probabilidades = markov(1000, 100);

printf("Probabilidade de atingir estado 0: %d\n", probabilidades(1));
printf("Probabilidade de atingir estado 4: %d\n", probabilidades(2));
