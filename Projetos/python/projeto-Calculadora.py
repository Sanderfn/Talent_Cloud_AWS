def calculadora(numero1, numero2, operacao):
    if operacao == 1:
        resultado = numero1 + numero2
    elif operacao == 2:
        resultado = numero1 - numero2
    elif operacao == 3:
        resultado = numero1 * numero2
    elif operacao == 4:
        if numero2 != 0:
            resultado = numero1 / numero2
        else:
            resultado = 0
    else:
        resultado = 0

    return resultado

# Exemplo de uso:
numero1 = 10
numero2 = 5
operacao = 1  # 1 para Soma, 2 para Subtração, 3 para Multiplicação, 4 para Divisão

resultado = calculadora(numero1, numero2, operacao)
print("Resultado da operação:", resultado)
