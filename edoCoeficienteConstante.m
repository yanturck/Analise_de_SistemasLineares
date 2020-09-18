%
%created by yan on 18/09/20.
%

%
%Populacao de ratos e corujas
%y' = 0.5*y - 450
%Solucao: y = 900 + c*E**(t/2)
%            y = b/a + c*E**(a*t)

%Funcao que recebe a, b e y0 e retorna y, sendo que y deve ser plotado em funcao do tempo

function y = edoCoeficienteConstante(a, b , y0)
    c = y0 - (b/a);
    t = (0:0.1:10);
    y = (b/a) + c*exp(a*t);
    
