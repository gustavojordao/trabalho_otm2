## Trabalho de Otimizaçao II

## Exercicio 3 - a

################################################################################

## Autores:
##    Daniel ... (...)
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
##    fila: Vetor com todos que estão esperando na fila.
##    total: Vetor com todos que estão no sistema de fila.

################################################################################


function [fila, total] = fila(lambda, mi, s, T)
  fila = [];
  total = []; 
  atendimento = [];
  
  for a = 1:T   

    % Da fila para o atendimento
    for y = 1:s      
      if size(atendimento,1) < s & !isempty(fila)
          atendimento = [atendimento; fila(1)];
          fila(1) = [];
      end
    end

    
    % Entrada na fila
    x = rand;
    if x < lambda      
      if size(atendimento,1) <= s
        atendimento = [atendimento ; a];
      else
        fila = [fila ; a];
      end
    end     
     
    
    % saida do atendimento
    for b = 1:s
      x = rand;
      if x < lambda & !isempty(atendimento)          
          atendimento(1) = [];
      end
    end
     
    total = [atendimento ; fila];
    
  end
  
end
