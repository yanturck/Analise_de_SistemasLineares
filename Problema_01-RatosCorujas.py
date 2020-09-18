import matplotlib.pyplot as plt
import math

#
#created by yan on 15/09/20
#

"""
Populacao de ratos e corujas
y' = 0.5*y - 450
Solucao: y = 900 + c*E**(t/2)
            y = b/a + c*E**(a*t)

Funcao que recebe a, b e y0 e retorna y, sendo que y deve ser plotado em funcao do tempo
"""
def gVetor (i0, n, p):
    aux = list(range(i0, n, p))
    vTmp = []
    
    for e in aux:
        vTmp.append(0.1*e)
        
    return vTmp

def edo(a, b, y0):
    c = y0 - (b/a)
    y = []
    
    vTempo = gVetor(1, 100, 1)
    
    for t in vTempo:
        y.append((b/a) + (c*math.exp(a*t)))
        
    return y

vTempo = gVetor(1, 100, 1)

vY1 = edo(0.5, 450, 899)
vY2 = edo(0.5, 450, 900)
vY3 = edo(0.5, 450, 901)


plt.plot(vTempo, vY1)
plt.plot(vTempo, vY2)
plt.plot(vTempo, vY3)

plt.xlabel('t')
plt.ylabel('y')
plt.title('Gráfico para c < 900, c = 900 e c > 900')
