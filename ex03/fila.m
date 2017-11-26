## Trabalho de Otimizaçao II

## Exercicio 3 - a

################################################################################

## Autores:
##    Daniel de Aguiar Gonçalves (201222040158)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas Ramon dos Santos Alves (201222040115)

################################################################################

## Argumentos:
##    lambda: Recebe o número de pessoas por unidade de tempo
##    mi:     Recebe o número de pessoas por unidade de tempo
##    s:      Recebe o número de atendentes do sistema de filas
##    T:      Recebe o número de iterações
## Retorno:
##    vFila: Vetor que armazena o número de clientes que aguardam atendimento ao 
##          logo do tempo.
##    vTotal: Vetor que armazena o total de clientes no sistema ao logo do tempo.

################################################################################

function [vFila, vTotal] = fila(lambda, mi, s, T)
  % Vetores que armazenam o número de clientes na fila e total ao longo do tempo. 
  vFila = [];
  vTotal = [];  
  
  % Vetores representam os clientes na fila e em atendimento.
  fila = [];
  atendimento = [];
  
  for a = 1:T   

    % Passando da fila para o atendimento
    for y = 1:s      
      if length(atendimento) < s && length(fila) > 0
          atendimento = [atendimento; fila(1)];
          fila(1) = [];
      end
    end
    
    % Entrada no sistema de fila
    x = rand;
    if x < lambda      
      if length(atendimento) < s
        atendimento = [atendimento ; a];
      else
        fila = [fila ; a];
      end
    end     
    
    % Saida do atendimento
    for b = 1:s
      x = rand;
      if x < mi && length(atendimento) > 0
          atendimento(1) = [];
      end
    end

    vFila = [vFila; length(fila)]; 
    vTotal = [vTotal; length(fila) + length(atendimento)];
   
  end
  
end
