## Trabalho de Otimizaçao II

## Exercicio 3 - b

################################################################################

## Autores:
##    Daniel de Aguiar Gonçalves (201222040158)
##    Érica Yuri Yoshiwara (201212040180)
##    Gustavo Jordão Nunes (201212040520)
##    Lucas Ramon dos Santos Alves (201222040115)

################################################################################

function x = simulador()
  
  for i = 1:100

    [fila1, total1] = fila(0.3, 0.25, 1, 1000);
    
    [fila2, total2] = fila(0.3, 0.25, 2, 1000);
    
    [fila3, total3] = fila(0.3, 0.2, 3, 1000);
    
    h = figure(i);
    subplot(3,1,1), plot(fila1,'r',total1,'g');
    title ('Gráfico 1 - λ = 0,3, μ = 0,25, s = 1');
    xlabel ('Tempo');
    ylabel ('Clientes');
    legend('Fila','Total');
    
    subplot(3,1,2), plot(fila2,'r',total2,'g');
    title ('Gráfico 2 - λ = 0,3, μ = 0,25, s = 2');
    xlabel ('Tempo');
    ylabel ('Clientes');
    legend('Fila','Total');
    
    subplot(3,1,3), plot(fila3,'r',total3,'g');
    title ('Gráfico 3 - λ = 0,3, μ = 0,20, s = 3');
    xlabel ('Tempo');
    ylabel ('Clientes');
    legend('Fila','Total');
  
  end

  
end