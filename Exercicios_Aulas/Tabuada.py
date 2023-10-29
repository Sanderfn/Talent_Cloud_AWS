# Crie uma função que receba um numero e imprima a tabuada dele

def tabuada(numero):
    for i in range(1, 11):
        resultado = numero * i
        print(f"{numero} x {i} = {resultado}")

tabuada (5)
