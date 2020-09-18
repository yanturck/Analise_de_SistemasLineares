import matplotlib.pyplot as plt
import math

#
#created by yan on 16/09/20
#

"""
Objeto em queda livre
y' = -0.2y + 9.8
Solucao: y = 49 + c*E**(-0.2t)
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

vY1 = edo(-0.2, -9.8, 48)
vY2 = edo(-0.2, -9.8, 49)
vY3 = edo(-0.2, -9.8, 50)

plt.plot(vTempo, vY1)
plt.plot(vTempo, vY2)
plt.plot(vTempo, vY3)

plt.xlabel('t')
plt.ylabel('y')
plt.title('Gráfico para c < 49, c = 49 e c > 49')
