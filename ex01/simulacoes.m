## Trabalho de Otimizaçao II

## Exercicio 1 - b
## Exercicio 1 - c

## Usando a solução da questão anterior, implemente um script que solucione o
## jogo de par ou ı́mpar. Simule tal jogo 100 vezes e acumule os prêmios retornados.

################################################################################

## Autores:
##    Daniel ... (...)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas Ramon dos Santos Alves (201222040115)

################################################################################

## A funçao criada recebe como parametro o numero de simulacoes a serem realizadas
## e retorna o premio acumulado para os Jogadores 1 e 2.

################################################################################

## Argumentos:
##    num_simulacoes: Recebe o numero de simulaçoes
##    mat_premios: Recebe a matriz de premios associada ao jogo.
##                 As linhas representam as estrategias do Jogador 1.
##                 As colunas representam as estragias do Jogador 2.
##    max_distincao: Valor maximo da norma euclidiana entre a solucao gerada e a otima.
##                   Quando este parametro nao for passado, nao havera distincao.
## Retorno:
##    premio_acum: Premio acumulado para o jogo
function [premio_acum] = simulacoes (num_simulacoes, mat_premios, max_distincao)

  # Calcula probabilidades de escolha das estrategias para os jogadores
  [prob1, prob2, valor] = jogo(mat_premios);

  # Inicializa variavel de historico
  historico = [];
  
  # Inicializa quantidade de estrategias de cada jogador
  num_estrategias_jog1 = size(prob1, 2);
  num_estrategias_jog2 = size(prob2, 2);
  
  # Se admitir soluçao distinta, aplica modificaçao
  if(exist('max_distincao', 'var'))
  
    sorteio1 = [];
    for j=1:num_estrategias_jog1
      sorteio1 = [sorteio1, rand];      
    end
    
    # Normaliza valores
    sorteio1 = sorteio1/sum(sorteio1(:));
    # Calcula percentual de variaçao em cada dimensao do vetor
    sorteio1 = sorteio1-(1/num_estrategias_jog1);
    # Aplica escala com distinçao maxima
    sorteio1 = max_distincao*sorteio1;
    
    prob1 = prob1 + sorteio1;
    
    sorteio2 = [];
    for j=1:num_estrategias_jog2
      sorteio2 = [sorteio2, rand];      
    end
    
    # Normaliza valores
    sorteio2 = sorteio2/sum(sorteio2(:));
    # Calcula percentual de variaçao em cada dimensao do vetor
    sorteio2 = sorteio2-(1/num_estrategias_jog2);
    # Aplica escala com distinçao maxima
    sorteio2 = max_distincao*sorteio2;
    
    prob1 = prob1 + sorteio2;
    
  endif

  # Inicializa variaveis de sorteio
  sorteio1 = [];
  sorteio2 = [];
  
  # Inicializa variavel de premio acumulado
  premio_acum = 0;
  for i=1:num_simulacoes
    # Realiza sorteios para escolha de estrategias
    sorteio1 = rand;
    sorteio2 = rand;
    
    # Define estrategia do Jogador 1
    acumulado = 0;
    estrategia_jog1 = 0;
    for j=1:num_estrategias_jog1
      acumulado = acumulado + prob1(1,j);

      # Se o valor sorteado for menor que a soma das probabilidades das estrategias
      # ja analisadas, seleciona a estrategia
      if(sorteio1 <= acumulado)
        estrategia_jog1 = j;
        break;
      endif
    end

    # Define estrategia do Jogador 2
    acumulado = 0;    
    estrategia_jog2 = 0;
    for j=1:num_estrategias_jog2
      acumulado = acumulado + prob2(1,j);

      # Se o valor sorteado for menor que a soma das probabilidades das estrategias
      # ja analisadas, seleciona a estrategia
      if(sorteio2 <= acumulado)
        estrategia_jog2 = j;
        break;
      endif
    end

    if(estrategia_jog1 == 0 || estrategia_jog2 == 0)
      i
      prob1
      prob2
      sorteio1
      sorteio2
      estrategia_jog1
      estrategia_jog2
    endif
    
    # Armazena dados no historico para possivel conferencia
    # 1 - Valor sorteado para escolha da estrategia do Jogador 1
    # 2 - Estrategia do Jogador 1    
    # 3 - Valor sorteado para escolha da estrategia do Jogador 2
    # 4 - Estrategia do Jogador 2    
    # 5 - Premio do jogo
    historico = [historico; sorteio1, estrategia_jog1, sorteio2, estrategia_jog2, mat_premios(estrategia_jog1, estrategia_jog2)];
    
  end
  
  # Calcula soma dos premios de todas as partidas
  premio_acum = sum(historico(:, 5), 1);  

endfunction
