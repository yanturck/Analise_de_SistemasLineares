%
% created by yan on 15/10/20
%
% funçao para resolver EDO de segunda ordem homogenia com coeficientes constantes

function y = edoSegOrdem(a, b, c, y0, y1)
    delta = (b^2)-(4*a*c);
    r1 = (-b + sqrt(delta))/(2*a);
    r2 = (-b - sqrt(delta))/(2*a);
    
    if (delta>0)                    % duas raizes possiveis
        
        aux = inline('(c1*exp(real(r1)*t))+(c2*exp(real(r2)*t))','c1','c2','t','r1','r2');
        
        tmp1 = [1 1; r1 r2];             % matriz A do sistema formado
        tmp2 = [y0 ; y1];                % matriz B do sistema formado
        solucao = linsolve(tmp1, tmp2);  % matriz solucao do sistema acima
        c1 = solucao(1);
        c2 = solucao(2);
        
    elseif delta == 0                % apenas uma raiz possivel
        
        aux = inline('(c1*exp(real(r1)*t))+(c2*t.*exp(real(r1)*t))','c1','c2','t','r1','r2');
        
        c1 = y0;
        c2 = y1 - (r1*c1);
        
    else                              % raiz com parte real e imaginaria
        
        aux = inline('exp(real(r1)*t).*((c1*cos(imag(r1)*t))+(c2*sin(imag(r1)*t)))','c1','c2','t','r1','r2');
        c1 = y0;
        c2 = y1 - (real(r1)*c1);
        
    end
    
    t = (0:1:10);
    y = aux(c1, c2, t, r1, r2);
    