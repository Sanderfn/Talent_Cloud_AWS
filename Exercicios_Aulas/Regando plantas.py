# Regando plantas

contador = 0
while(contador <=5):
    print("Regra a planta", contador)
    contador  = contador + 1


for  contador in range (0,6):
    print("Regar a planta", contador)
    
# Agora precisamos regar apenas os tomates que são as planta 0,2 e 4

contador = 0
while(contador <=5):
    print("Regra a planta", contador)
    contador  = contador + 2


for  contador in range (0,6,2):
    print("Regar a planta", contador)

# Agora precisamos regar apenas as batatas que são as planta 3,4,5

contador = 3
while(contador <=5):
    print("Regra a planta", contador)
    contador  = contador + 1


for  contador in range (3,6,1):
    print("Regar a planta", contador)
