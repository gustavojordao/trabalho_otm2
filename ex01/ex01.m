## Trabalho de Otimizaçao II

## Exercicio 4

## Visando analisar o comportamento sistemas de fila M/M/s, construa um script
## com uma função que receba a taxa de chegada, lambda (número de clientes por minuto), 
## e a taxa de atendimento, mu (número de clientes por minuto). Para s pertencente {1,2,3,4}, 
## {1,2,3,4}, tal script deve apresentar uma tabela comparativa apresentandos os valores 
## das grandezas P0, P1, P2, P5, P10, L, Lq, W, Wq, P(Wq>0), P(Wq>1), P(Wq>2) e P(Wq>5).

## Visando solucionar o problema de um jogo com 2 jogadores e soma 0, resolva:


## a) (5 pontos) Implemente um script com uma função que receba uma matriz que representa
## uma tabela de prêmios e retorne, para cada jogador, o vetor de probabilidades de se
## selecionar cada estratégia, e o valor do jogo. Em outras palavras, uma função que resolva
## o problema via estratégias mistas. Use a função glpk para solucionar o problema linear.


## b) (1 ponto) Usando a solução da questão anterior, implemente um script que solucione o
## jogo de par ou ı́mpar. Simule tal jogo 100 vezes e acumule os prêmios retornados.


## c) (4 pontos) Usando a solução da questão anterior, implemente um script que:

## (i) Resolva o jogo com a seguinte tabela de prêmios:
##    B1 B2 B3
## A1  3 -1 -3
## A2 -2  4 -2
## A3 -5 -6 -2

## (ii) Simule o jogo em 100 rodadas, com a solução ótima obtida, e acumule e apresente
## o somatório dos prêmios.

## (iii) Simule o jogo em 100 rodadas, com uma solução um pouco distinta da ótima (a
## norma euclidiana da diferença das duas não passa de 0,01), e acumule e apresente
## o somatório dos prêmios.

## (iv) Compare numericamente o somatório dos prêmios das duas simulações.

################################################################################

## Autores:
##    Daniel ... (...)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas Ramon dos Santos Alves (201222040115)

################################################################################

## O script a seguir executa todas as operaçoes do execicio 1 chamando as funçoes
## implementadas jogo.m e simulacoes.m
## Para entender melhor o funcionamento destas funcoes, verifique a documentaçao
## dos mesmos nos comentarios destes arquivos.

################################################################################


clear;
close all;
clc;


# Exercício 1-a
# Script jogo.m

#########################################

# Exercício 1-b
printf('#########################################');
printf('\nExercício 1-b\n');

# Primeira linha: Jogador escolhe par
# Segunda linha:  Jogador escolhe impar
# Primeira coluna: Soma do jogo e par
# Segunda coluna:  Soma do jogo e impar

par_impar = [ 1 -1; 
             -1  1
            ];

premio_acum_par_impar = simulacoes(100, par_impar)

#########################################

# Exercício 1-c-i
printf('\n#########################################');
printf('\nExercício 1-c-i\n');

premios = [ 3 -1 -3; 
           -2  4 -1;
           -5 -6 -2
          ];

[prob1, prob2, valor] = jogo(premios)

#########################################

# Exercício 1-c-ii
printf('\n#########################################');
printf('\nExercício 1-c-ii\n');

premio_acum_otimo = simulacoes(100, premios)

#########################################

# Exercício 1-c-iii
printf('\n#########################################');
printf('\nExercício 1-c-iii\n');

premio_acum_distincao = simulacoes(100, premios, 0.01)

#########################################

# Exercício 1-c-iv
printf('\n#########################################');
printf('\nExercício 1-c-iv\n');

printf('Valor otimo do jogo: %f\n', valor);
printf('Valor esperado para %d jogos: %f\n', 100, 100*valor);
printf('Valor acumulado para %d jogos otimos: %f\n', 100, premio_acum_otimo);
printf('Valor acumulado para %d jogos com distinçao: %f\n', 100, premio_acum_distincao);
