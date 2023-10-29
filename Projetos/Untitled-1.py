
while True:
  try:
      nome = input('Digite seu nome: ')
      ano = int(input('Digite seu ano de nascimento: '))

      if ano < 1922 or ano > 2021:
          raise ValueError("O ano deve estar entre 1922 e 2021.") # Gera uma exceção se o ano for preenchido incorretamente. Caso isso ocorra, vai pra except, do contratio continua
      print(f"Seu nome é {nome} e você nasceu em {ano}!")
      break # estando tudo certo, sai do loop

  except ValueError as e: #  captura a exceção e a armazena na variável e.
      print(e)
      print("Por favor, digite um ano válido.") # imprime uma mensagem de erro e pede ao usuário que digite novamente.