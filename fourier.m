%
%created by yan on 28/10/20.
%

function n = fourier(t,m)
    f = inline('((8/(pi^2))*(cos(0.5*pi*(2*m-1)*t)/((2*m-1)^2)))','m','t');
    n = zeros(1,length(t));

    aux = 0;    % variavel auxiliar
    inc = 1;    % incrementando
    dec = m;    % decrementando
    
    while (inc <= length(t)),    % calculando a serie para cada t
        
        while (dec > 0),         % somando a serie para cada m
            
            aux = aux + f(dec,t(inc));
            dec = dec-1;
            
        end
        
        tmp = 1 - aux;    % subtraindo do a0
        n(inc) = tmp;     % adcionando em n
        aux = 0;          % limpando a auxiliar para um novo somatorio
        dec = m;          % reacapitulando todos os m
        inc = inc+1;      % pegando um novo valor de 't'
        
    end
end
