function rs = atvSS()
    L = 2 * (10^(-3));
    R = 50;
    C = 10 * (10^(-6));
    
    A = [0 1; (-1/(L*C)) (-R/L)];
    
    rs = eig(A);
    % Estavel, pois os auto-valores de A sao negativos, logo, o resultado converge
end