% 01 - Suponha que um certo objeto O, bidimensional, deva ser rotacionado
% de 60° em torno do ponto (0, 1), sofrendo a seguir uma escala uniforme 
% de fator 3, com ponto fixo em (0, 1); e depois transladar o ponto (0, 1) 
% para o ponto (3, 1). Dê a representação da matriz composta de transformação 
% que implementa essa sequência de operações.

% I   - T(0,-1)
% II  - R(60)
% III - S(3x, 3y)
% IV  - T(0,1)
% V   - T(3,1) | VI - T(3,1)

I = [1 0 0; 0 1 -1; 0 0 1];
II = [cos(pi/3) -sin(pi/3) 0; sin(pi/3) cos(pi/3) 0; 0 0 1];
III = [3 0 0; 0 3 0; 0 0 1];
VI = [1 0 3; 0 1 1; 0 0 1];

mct = VI*III*II*I;

test1 = [0; 1; 1];
test2 = [0; 2; 1];
test3 = [1; 1; 1];
test4 = [1; 2; 1];

rest1 = mct*test1;
rest2 = mct*test2;
rest3 = mct*test3;
rest4 = mct*test4;