# Uma nova loja de cosméticos abriu no seu bairro e pediram para você elaborar um sistema que imprime na tela na frente da loja os novos produtos que chegaram. 
# O sistema da loja já tem um array com os produtos, você precisa apenas imprimir eles no terminal, um por um. 
# Como desafio opcional, tente imprimir cada produto com a frase "Temos [produto] à venda!" (ex. "Temos máscaras faciais à venda!").

# lista_produtos = ['máscaras faciais', 'batons', 'esmaltes', 'perfumes', 'loções', 'xampus', 'sabonetes', 'delineadores']

# Trabalhe esse código no Google Colab, e compartilhe o link do projeto no campo ao lado para que outros desenvolvedores possam analisá-lo.

lista_produtos = ['máscaras faciais', 'batons', 'esmaltes', 'perfumes', 'loções', 'xampus', 'sabonetes', 'delineadores'] 

for i in range (len(lista_produtos)):

  print("Temos " + lista_produtos[i]+" à venda!")
