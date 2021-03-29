%
%created by yan on 18/09/20.
%

%Funcao que recebe a, b e y0 e retorna y, sendo que y deve ser plotado em funcao do tempo

function y = edoPriOrdem(a, b , y0, t)
    c = y0 - (b/a);
    y = (b/a) + c.*exp(a*t);
    