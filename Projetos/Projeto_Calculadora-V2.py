def calculadora():
    while True:
        print("Selecione a operação:")
        print("1: Soma")
        print("2: Subtração")
        print("3: Multiplicação")
        print("4: Divisão")
        print("0: Sair")
        
        opcao = input("Digite o número da operação desejada: ")

        if opcao == "0":
            print("Saindo da calculadora.")
            break
        elif opcao not in ("1", "2", "3", "4"):
            print("Essa opção não existe. Por favor, escolha uma opção válida.")
            continue

        num1 = float(input("Digite o primeiro número: "))
        num2 = float(input("Digite o segundo número: "))

        if opcao == "1":
            resultado = num1 + num2
            print(f"Resultado da soma: {resultado}")
        elif opcao == "2":
            resultado = num1 - num2
            print(f"Resultado da subtração: {resultado}")
        elif opcao == "3":
            resultado = num1 * num2
            print(f"Resultado da multiplicação: {resultado}")
        elif opcao == "4":
            if num2 != 0:
                resultado = num1 / num2
                print(f"Resultado da divisão: {resultado}")
            else:
                print("Não é possível dividir por zero. Tente novamente.")

if __name__ == "__main__":
    calculadora()