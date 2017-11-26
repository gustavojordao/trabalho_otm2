## Trabalho de Otimizaçao II

## Exercicio 1 - a

## Implemente um script com uma função que receba uma matriz que representa
## uma tabela de prêmios e retorne, para cada jogador, o vetor de probabilidades de se
## selecionar cada estratégia, e o valor do jogo. Em outras palavras, uma função que resolva
## o problema via estratégias mistas. Use a função glpk para solucionar o problema linear.

################################################################################

## Autores:
##    Daniel ... (...)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas Ramon dos Santos Alves (201222040115)

################################################################################

## A funçao criada recebe como parametro a matriz de premios e retorna tres variaveis
## como resultado, sendo elas, as probabilidades de vitoria do primeiro jogador de acordo
## com a estrategia escolhida, as probabilidades de vitoria do segundo jogador de acordo
## com a estrategia escolhida e o valor da soluçao otima do jogo.

################################################################################

## Argumentos:
##    premios: Recebe a matriz de premios associada ao jogo.
##             As linhas representam as estrategias do Jogador 1.
##             As colunas representam as estragias do Jogador 2.
## Retorno:
##    prob1: Probabilidades de vitoria do Jogador 1 de acordo com cada estrategia
##    prob2: Probabilidades de vitoria do Jogador 2 de acordo com cada estrategia
##    valor: Valor da soluçao otima do jogo
function [prob1, prob2, valor] = jogo (premios)
  
  # Calcula quantidade de estrategias de cada jogador
  num_est_jog1 = size(premios, 1);
  num_est_jog2 = size(premios, 2);
  
  ##############################################################################
  # Jogador 1
  
  l = num_est_jog2+1;
  c = num_est_jog1+1;
  restricoes = zeros(l, c);  
  
  # Estabelece funçao objetivo
  objetivo = zeros(1, c);
  objetivo(1, c) = 1;
  
  # Calcula matriz de restriçoes do jogador 1
  restricoes(1:l-1, 1:c-1) = premios';
  restricoes(:, c) = -ones(l, 1);
  restricoes(l, :) = ones(1, c);
  restricoes(l, c) = 0;

  # Calcula coeficientes do lado direito da equaçao  
  coef_restricoes = zeros(l, 1);
  coef_restricoes(l, 1) = 1;
  
  # Inicializa limites das variaveis, inferior = -infinito e superior = infinito
  lb = zeros(c, 1);
  lb(c,1) = -inf;
  ub = inf*ones(c, 1);
  
  # Define que as restriçoes sao do tipo >= e que a ultima e do tipo =
  ctype = "S";  
  for i=1:l-1
    ctype = ["L" ctype];
  end  
  
  # Define que as variaveis sao continuas
  vartype = "C";
  for i=1:c-1
    vartype = [vartype "C"];
  end
  vartype = char(vartype);  
  
  #  1 -> Minimizaçao
  # -1 -> Maximizaçao
  s = -1;
    
  # Resolvendo problema de otimizaçao
  [prob1, valor, erro, extra] = glpk(objetivo, restricoes, coef_restricoes, lb, ub, ctype, vartype, s);
valor
  # Removendo variavel adicionada para o objetivo
  prob1 = prob1(1:c-1,1)';
  
  ##############################################################################
  # Jogador 2
  
  l = num_est_jog1+1;
  c = num_est_jog2+1;
  restricoes = zeros(l, c);  
  
  # Estabelece funçao objetivo
  objetivo = zeros(1, c);
  objetivo(1, c) = 1;
  
  # Calcula matriz de restriçoes do jogador 2
  restricoes(1:l-1, 1:c-1) = premios;
  restricoes(:, c) = -ones(l, 1);
  restricoes(l, :) = ones(1, c);
  restricoes(l, c) = 0;

  # Calcula coeficientes do lado direito da equaçao  
  coef_restricoes = zeros(l, 1);
  coef_restricoes(l, 1) = 1;
  
  # Inicializa limites das variaveis, inferior = -infinito e superior = infinito
  lb = zeros(c, 1);
  lb(c,1) = -inf;
  ub = inf*ones(c, 1);
  
  # Define que as restriçoes sao do tipo <= e que a ultima e do tipo =
  ctype = "S";  
  for i=1:l-1
    ctype = ["U" ctype];
  end  
  
  # Define que as variaveis sao continuas
  vartype = "C";
  for i=1:c-1
    vartype = [vartype "C"];
  end
  vartype = char(vartype);  
  
  #  1 -> Minimizaçao
  # -1 -> Maximizaçao
  s = 1;
  
  # Resolvendo problema de otimizaçao
  [prob2, valor, erro, extra] = glpk(objetivo, restricoes, coef_restricoes, lb, ub, ctype, vartype, s);
  
  # Removendo variavel adicionada para o objetivo
  prob2 = prob2(1:c-1,1)';
  
endfunction
