*** Settings ***

Resource    ../../base.robot

#Test Setup        Open App
Test Teardown     Teardown

*** Test Cases ***
C001 - Rolar tela do aplicativo
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue navegar até o final da tela

CT002 - Visualizar informações pessoais de Nome
    Dado que o usuário está logado no aplicativo  
    Quando o usuário está na tela inicial
    Então consegue visualizar seu Nome

CT003 - Visualizar saldo bancário
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue visualizar saldo atual da Conta

CT004 - Navegar entre atalho de movimentação de dinheiro
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue navegar entre os atalhos de movimentação de moeda

CT005 - Visualizar atalho de Meus Cartões
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue visualizar o atalho Meus Cartões
    E consegue clicar no atalho Meus Cartões

CT006 - Visualizar atalho de aviso de empréstimo
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue visualizar valor disponivel para empréstimo

CT007 - Visualizar atalho para guardar dinheiro
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue visualizar o atalho Guardar Dinheiro
    E consegue clicar no atalho Guardar Dinheiro

CT008 - Acessar funcionalidade de PIX 
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue acessar a funcionalidade de PIX
    E consegue visualizar todas as funcoes do PIX

CT010 - Voltar para tela inicial apos acessar funcionalidade de PIX clicando no X
    Dado que o usuário está logado no aplicativo
    E esta na tela de funcionalidade de PIX
    Então consegue retornar para tela inicial clicando no x do pix

#CT011 - Voltar para tela inicial apos acessar funcionalidade de PIX deslizando a tela
    #Dado que o usuário está logado no aplicativo
    #E esta na tela de funcionalidade de PIX
    #Então consegue retornar para tela inicial arrastdeslizando a tela para baixo

CT012 - Acessar funcionalidade de pagar boleto
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    E acessar a funcionalidade de Pagar
    Então visualizar todas as opcoes de Pagamento

CT013 - Voltar para tela inicial apos acessar funcionalidade de PAGAR clicando no X
    Dado que o usuário está logado no aplicativo
    E esta na tela de funcionalidade de Pagar
    Então consegue retornar para tela inicial clicando no x de pagar

CT014 - Acessar funcionalidade de Transferencia
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue acessar a funcionalidade de Transferencia
    E o campo para inserir o valor deve estar zerado

CT015 - Deve ser possivel digitar um valor na tela de Transferencia
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Transferencia
    Então consegue inserir um valor numerico no campo de inserir valor

CT016 - Nao deve ser possivel considerar caracteres diferente de numero na tela de Transferencia
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Transferencia
    Então nao deve considerar caractere diferente de numero no campo de inserir valor

CT017 - Nao deve ser possivel considerar numero maior que 14 digitos
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Transferencia
    Então nao deve considerar valor inserido apos 14 digitos

CT18 - Deve ser possivel clicar no icone de QRCode na tela de Transferencia
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Transferencia
    Então consegue clicar no icone de Qrcode

CT019 - Voltar para tela inicial apos acessar funcionalidade de TRANSFERENCIA clicando no X
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Transferencia
    Então consegue retornar para tela inicial clicando no x de transferencia

CT020 - Acessar funcionalidade de Depositar
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue acessar a funcionalidade de Depósito
    E consegue visualizar todas as funcoes para depositar

CT021 - Voltar para tela inicial apos acessar funcionalidade de DEPÓSITO clicando no X
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Depósito
    Então consegue retornar para tela inicial clicando no x de depósito

CT022 - Acessar funcionalidade de Emprestimo pelo icone
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue acessar a funcionalidade de Emprestimo

CT024 - Acessar funcionalidade de Recarga de Celular
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue acessar a funcionalidade de Recarga de Celular
    E visualiza o campo para inserir o numero de telefone

CT025 - Deve ser possivel inserir numero de celular com 11 digitos
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela de Recarga de Celular
    Então consegue inserir numero de telefone com 11 digitos

CT026 - Nao deve ser possivel considerar caracteres diferente de numero na tela de Recarga de Celular
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela de Recarga de Celular
    Então nao deve considerar caractere diferente de numero no campo de inserir telefone

CT027 - Nao deve ser possivel considerar numero de telefone maior que 11 digitos na tela de Recarga de Celular
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela de Recarga de Celular
    Então nao deve considerar valor inserido apos inserir telefone com 11 digitos

CT028 - Voltar para tela inicial apos acessar funcionalidade de RECARGA clicando no X
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela de Recarga de Celular
    Então consegue retornar para tel inicial clicando no x de recarga

CT029 - Acessar a funcionalidade de Cobrar
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Entao acessa a funcionalidade de Cobrar
    E o campo para inserir o valor de cobranca deve estar zerado

CT030 - Deve ter opcao de nao especificar valor de cobranca
    Dado que o usuário está logado no aplicativo
    Quando o usuario estar na tela de Cobrar
    Entao tem opcao de nao especificar o valor de cobranca

CT031 - Deve ser possivel digitar um valor na tela de cobranca
    Dado que o usuário está logado no aplicativo
    Quando o usuario estar na tela de Cobrar
    Então consegue inserir um valor no campo de cobranca

CT032 - Nao deve ser possivel considerar caractere diferente de numero no campo de inserir valor para cobranca
    Dado que o usuário está logado no aplicativo
    Quando o usuario estar na tela de Cobrar
    Entao considera apenas os caracteres numericos inseridos no campo de cobranca

CT033 - Voltar para tela inicial apos acessar funcionalidade de COBRAR
    Dado que o usuário está logado no aplicativo
    Quando o usuario estar na tela de Cobrar
    Então consegue retornar para tela inicial clicando no x de cobranca

C034 - Acessar a funcionalidade de Doacao
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Entao clica na funcionalidade de Doacao

C035 - Acessar funcionalidade Encontrar Atalhos
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Entao clica na funcionalidade de Encontrar Atalhos

C036 - Visualizar resumo de informacoes do Cartao de Credito
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Entao consegue visualizar resumo da fatura
    E consegue visualizar limite disponivel

C037 - Acessar funcionalidade de Cartão de Crédito
    Dado que o usuário está logado no aplicativo
    Quando o usuario acessa a tela de cartão de crédito
    Então consegue visualizar a fatural atual e limite disponivel
    E visualiza todas as funcionalidades do cartão de crédito

C038 - Deve ser possível visualizar as ultimas movimentações do cartão de crédito
    Dado que o usuário está logado no aplicativo
    Quando o usuario acessa a tela de cartão de crédito
    Então consegue visualizar as ultimas movimentações do cartão

C039 - Na tela de funcionalidade de Cartão de Crédito deve ser possivel clicar na lupa de pesquisa
    Dado que o usuário está logado no aplicativo
    Quando o usuario acessa a tela de cartão de crédito
    Então consegue clicar no icone de pesquisa

C040 - Na tela de funcionalidade de Cartão de Crédito deve ser possivel clicar na lupa de pesquisa
    Dado que o usuário está logado no aplicativo
    Quando o usuario acessa a tela de cartão de crédito
    Então consegue clicar no icone de ajuda

C041 - Na tela de funcionalidade de Cartão de Credito deve ser possivel retornar para tela inicial
    Dado que o usuário está logado no aplicativo
    Quando o usuario acessa a tela de cartão de crédito
    Então consegue retornar para tela inicial

C042 - Acessar funcionalidade Emprestimo
    Dado que o usuário está logado no aplicativo
    Quando o usuário acessa a funcionalidade de Emprestimo
    Então visualiza todas informações sobre valor de Emprestimo
    E visualiza opcao de solicitar novo emprestimo

CT0 - Visualizar opção de emprestimo ativo
    Dado que o usuário está logado no aplicativo
    Quando o usuário acessa a funcionalidade de Emprestimo
    Entao visualiza informacao se ha emprestimo ativo

CT0 - Visualizar opcao de ajuda na tela de emprestimo
    Dado que o usuário está logado no aplicativo
    Quando o usuário acessa a funcionalidade de Emprestimo
    Então visualiza icone de ajuda

CT - Visualizar funcionalidade de Investimentos
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    E desliza tela para baixo
    Então deve ser possivel visualizar a funcionalidade de Investimentos

CT - Acessar funcionalidade de Investimentos
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    E desliza tela para baixo
    Então deve ser possivel acessar a funcionalidade de Investimento clicando em Conhecer Mais
    E visualizar mais informações de investimento

CT - Visualizar funcionalidade de Seguro de Vida
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    E desliza tela para baixo
    Então deve ser possível visualizar a funcionalidade de Seguro de Vida


    










    

    
    




    

