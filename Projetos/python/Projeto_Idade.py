def obter_ano_nascimento():
    while True:
        try:
            ano_nascimento = int(input("Digite o ano de nascimento (entre 1922 e 2021): "))
            if 1922 <= ano_nascimento <= 2021:
                return ano_nascimento
            else:
                print("Ano fora do intervalo permitido. Tente novamente.")
        except ValueError:
            print("Ano de nascimento inválido. Tente novamente.")

def calcular_idade(ano_nascimento):
    ano_atual = 2022
    idade = ano_atual - ano_nascimento
    return idade

nome_completo = input("Digite seu nome completo: ")
ano_nascimento = obter_ano_nascimento()

idade = calcular_idade(ano_nascimento)

print(f"Nome: {nome_completo}")
print(f"Idade atual: {idade} anos")