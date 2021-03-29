
function rs = compTipico()
    % Comportamento tipico

    % (i) vi = 1 e vi = 10
    num1 = 1;
    num2 = 10;

    % (ii) tau < 1, tau = 1, tau > 1
    den1 = [0.1 1];
    den2 = [1 1];
    den3 = [10 1];

    funT1 = tf(num1,den1);
    funT2 = tf(num1,den2);
    funT3 = tf(num1,den3);

    funT4 = tf(num2,den1);
    funT5 = tf(num2,den2);
    funT6 = tf(num2,den3);

    figure(1);
    stepplot(funT1);
    title('Para Vi = 1 e tau < 1');

    figure(2);
    stepplot(funT2);
    title('Para Vi = 1 e tau = 1');

    figure(3);
    stepplot(funT3);
    title('Para Vi = 1 e tau > 1');

    figure(4);
    stepplot(funT4);
    title('Para Vi = 10 e tau < 1');

    figure(5);
    stepplot(funT5);
    title('Para Vi = 10 e tau = 1');

    figure(6);
    stepplot(funT6);
    title('Para Vi = 10 e tau > 1');
    
    rs = 0;
end