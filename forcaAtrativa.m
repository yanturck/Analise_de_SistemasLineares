function rs = forcaAtrativa()
    
    angulos = (0:0.01:2*pi);
    
    anguloAlvo = (pi/2);
    lambda = 1;
    
    anguloRS = lambda*sin(2*pi*(angulos-anguloAlvo));
    
    plot(angulos,anguloRS);
    
    rs = 0;
end