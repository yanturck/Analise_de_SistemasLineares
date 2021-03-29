%
%created by yan on 08/10/20.
%
% Definido em 1 para t>=0 e em 0 para t<0

function u = funcaoDegrau(t)
    aux = inline('t>=0','t');
    u = aux(t);
    