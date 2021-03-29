function rs = atvTL()
    % 3a questão
    t = (0:0.01:3); % vetor tempo
    
    % a) v(t) = sin(10t)
    v1 = sin(10*t);
    
    vc1 = sin((10*t)-(0.01));
    
    figure(1);
    plot(t,v1,t,vc1);
    title('03 - (a)');
    legend('v(t)','vc(t)');
    
    
    % b) v(t) = sin(1000t)
    v2 = sin(1000*t);
    
    vc2 = (1/sqrt(2))*sin((1000*t)-(pi/4));
    
    figure(2);
    plot(t,v2,t,vc2);
    title('03 - (b)');
    legend('v(t)','vc(t)');
    
    % c) v(t) = sin(10000t)
    v3 = sin(10000*t);
    
    vc3 = (1/sqrt(101))*sin((10000*t)-1.47);
    
    figure(3);
    plot(t,v3,t,vc3);
    title('03 - (c)');
    legend('v(t)','vc(t)');
    
end