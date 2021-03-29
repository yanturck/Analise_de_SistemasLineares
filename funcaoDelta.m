%
%created by yan on 08/10/20.
%
% Definido em 1 para n=0 e em 0 para n!=0

function delta = funcaoDelta(t)
    aux = inline('t==0','t');
    delta = aux(t);