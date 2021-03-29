function r = atvTF()
    F = 100;
    t = (-10:1/F:10); % vetor tempo
    L = length(t);
    
    % 1 questao
    x1 = exp(-10*t).*funcaoDegrau(t);
    
%    xw1 = fft(x1);
%    modulo_xw1 = abs(xw1/L)
    xw1 = 1./sqrt(100+(t.^2));
   
    figure(1);
    plot(t,x1);
    title('01 - x(t)');
    
    figure(2);
%    plot(modulo_xw1(1:20));
    plot(t,xw1)
    title('01 - Xw');
    
    % 2 questao
    x2 = funcaoDelta(t);
    
    xw2 = fft(x2);
    modulo_xw2 = abs(xw2);
    
    figure(3);
    stem(t,x2);
    title('02 - x(t)');
    
    figure(4);
    plot(modulo_xw2(1:20));
    title('02 - X(w)');
    
    % 3 questao
    x3 = cos(2*t);
    
    f = F*(0:(L/2))/L;
    xw3 = fft(x3);
    modulo_xw3 = abs(xw3/L);
    P1 = modulo_xw3(1:L/2+1);
    P1(2:end-1) = 2*P1(2:end-1);
   
    
    figure(5);
    plot(t,x3);
    title('03 - x(t)');
    
    figure(6);
    %stem(modulo_xw3(1:20));
    stem(f,P1);
    title('03 - X(w)');
end