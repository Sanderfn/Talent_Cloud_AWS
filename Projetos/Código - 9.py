# Os 3 códigos a seguir devem imprimir um numero para cada um dos 20 andares de um hotel, com exceção do andar 13º pois o dono é superticioso.
# Em todos os cenários foi solicitado que a contagem fosse regressiva.

# Neste 1º código: A variável i recebeu o valor de 20, o comando While irá executar a repetição até que a variável i seja menor ou igual a 1.
# A função if condiciona a impressão da variavel i quando ela não receber o valor 13.
# A última linha condiciona o decrescimento da contagem em uma unidade acada repetição.
i = 20
while i >= 1:
    if i != 13:
        print(i)
    i -= 1

# Neste 2º código: O comando for inicia o laço repetição para a variável i que recebeu o valor inicial dentro da função range de 20 e valor final de 0.
# O terceiro parametro na função range com valor -1 informa que a cada repetição o valor de i será descrementados em uma unidade.

for i in range(20, 0, -1):
    if i != 13:
        print(i)

# Neste 3º código: Inicialmente cria -se uma lista denominada números ondea variável i recebe por meio da função range o valor inicial de 20 e o valor de 0.
# Terceiro parametro na função range com valor -1 informa que a cada repetição o valor de i será descrementados em uma unidade.
# A função if condiciona a impressão da variavel i quando ela não receber o valor 13.

numeros = [i for i in range(20, 0, -1) if i != 13]
for numero in numeros:
        print(numero)

# Os códigos foram criados no VSCode.