## Trabalho de Otimizaçao II

## Exercicio 1 - b

## Usando a solução da questão anterior, implemente um script que solucione o
## jogo de par ou ı́mpar. Simule tal jogo 100 vezes e acumule os prêmios retornados.

################################################################################

## Autores:
##    Daniel ... (...)
##    Érica Yuri Yoshiwara (201212040...)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas ... (...)

################################################################################

## A funçao criada recebe como parametro o numero de simulacoes a serem realizadas
## e retorna o premio acumulado para os Jogadores 1 e 2.

################################################################################

## Argumentos:
##    num_simulacoes: Recebe o numero de simulaçoes
##    mat_premios: Recebe a matriz de premios associada ao jogo.
##                 As linhas representam as estrategias do Jogador 1.
##                 As colunas representam as estragias do Jogador 2.
## Retorno:
##    premio_acum: Premio acumulado para o jogo
function [premio_acum] = simulacoes (num_simulacoes, mat_premios)

  [prob1, prob2, valor] = jogo(mat_premios);

  num_estrategias_jog1 = size(prob1, 2);
  num_estrategias_jog2 = size(prob2, 2);
  
  for i=1:num_simulacoes
    sorteio1 = rand;
    sorteio2 = rand;
    
    for j=1:num_estrategias_jog1
      if(sorteio1 <= )
      
      endif
    end
      
    for j=1:num_estrategias_jog2
      if(sorteio2 <= )
      
      endif
    end
    
    
  end

endfunction