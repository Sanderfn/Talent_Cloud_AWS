# Busque do usuário as seguintes informações:
# nome, anosNascimento, cep,rua, bairro e cidade


nome = input("Digite seu nome: ")
ano_nascimento = int(input("Digite o ano de nascimento: "))
cep = input("Digite o CEP: ")
rua = input("Digite o nome da rua: ")
bairro = input("Digite o bairro: ")
cidade = input("Digite a cidade: ")

if nome != "jonny":
    print("O nome informado não é jonny")

idade = 2023 - ano_nascimento
print(idade)

if cidade != "taubate":
    print("Você não mora no interior")

moraInterior = cidade == "taubate"
nomeJonny = nome =="jonny"

print("Seu nome é " , nome , " e você tem ", idade," anos")
print("Mora no interior?" , moraInterior)
print("Seu nome é jonny?" ,nomeJonny  )

    