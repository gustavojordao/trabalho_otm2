## Trabalho de Otimizaçao II

## Exercicio 2

## Seja a cadeia de Markov representada pela matriz de transição apresentada
## abaixo. Suponha que a cadeia inicie no estado 1. Construa um script que simule 1000
## vezes e estime, separadamente, os valores de probabilidades de a cadeia cair nos estados
## absorventes 0 e 4. Em cada simulação deve ser observado, no máximo, 100 transições.

################################################################################

## Autores:
##    Daniel ... (...)
##    Érica Yuri Yoshiwara (201212040...)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas ... (...)

################################################################################

## A funçao criada recebe como parametro o numero de simulaçoes e de transiçoes.
## Retorna um historico de simulaçoes, sendo que para cada simulaçao constam os sorteios
## e os estados de cada transiçao

################################################################################

## Argumentos:
##    num_simulacoes: Recebe o numero de simulaçoes a serem feitas
##    num_transicoes: Recebe o numero de transiçoes a serem feitas
## Retorno:
##    historico: Matriz de tres dimensoes com o historico de resultados
##               1a dimensao: Simulaçao
##               2a dimensao: Transiçao
##               3a dimensao: Primeiro valor -> valor do sorteio
##                            Segundo valor -> estado resultado da transiçao
function [historico] = markov (num_simulacoes, num_transicoes)

  # Preenche matriz de probabilidades da cadeia de Markov  
  cadeia = [   1   0   0   0   0;
             2/3   0 1/3   0   0;
               0 2/3   0 1/3   0;
               0   0 2/3   0 1/3;
               0   0   0   0   1 
            ];
  
  num_estados = size(cadeia, 1);

  # Inicializa matriz de resultados
  historico = zeros(num_simulacoes, num_transicoes, 2);
  
  # Executa simulaçoes
  for i=1:num_simulacoes
    # Atribui estado inicial  
    estado = 1;

    # Executa transiçoes
    for j=1:num_transicoes
      # Realiza sorteio (0..1) para determinar transiçao
      sorteio = rand;
      
      # Incializa a variavel de probabilidade a
      acumulado = 0;
      for k=1:num_estados
        acumulado += cadeia(estado+1,k);
        # Quando o valor do sorteio e menor que o somatorio das probalidades
        # avaliadas ate o momento, a transiçao e feita para o estado em que
        # a verificaçao esta acontecendo.
        if (sorteio <= acumulado)
          estado = k-1;
          break;
        endif
      end
      # Armazena resultado no historico
      historico(i, j, :) = [sorteio; estado];      
    end
  end

endfunction
