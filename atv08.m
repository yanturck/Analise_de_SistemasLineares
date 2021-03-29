function rs = atv08()
    t1 = (-4:2:4);
    x1 = [0 2 0 2 0];
    
    t2 = (-4:0.01:4);
    x2 = fourier(t2, 2);

    rs = fourier(2, 28);
    plot(t1, x1, t2, x2);
    legend('Onda Triangular', 'Aproximação Série');
end