function rs = circuitoRLC()
    r = 200;
    l = 20*(10^-3);
    c = 0.1*(10^-6);
    	
    num = 1;
    den = [r l (1/c)];
    
    funcaoT = tf(num,den);
    
    stepplo(funcaoT);
    bode(funcaoT);
end