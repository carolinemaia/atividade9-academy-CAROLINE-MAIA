*** Settings ***

Resource    ../../base.robot

Test Teardown     Teardown

*** Test Cases ***
CT001 - Acessar a funcionalidade de Cobrar
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Entao deve conseguir acessar a funcionalidade de Cobrar
    E o campo para inserir o valor de cobranca deve estar zerado

CT002 - Deve ter opcao de nao especificar valor de cobranca
    Dado que o usuário está logado no aplicativo
    Quando o usuario estar na tela de Cobrar
    Entao tem opcao de nao especificar o valor de cobranca

CT003 - Deve ser possivel digitar um valor na tela de cobranca
    Dado que o usuário está logado no aplicativo
    Quando o usuario estar na tela de Cobrar
    Então consegue inserir um valor no campo de cobranca    8520

CT004 - Nao deve ser possivel considerar caractere diferente de numero no campo de inserir valor para cobranca
    Dado que o usuário está logado no aplicativo
    Quando o usuario estar na tela de Cobrar
    Entao considera apenas os caracteres numericos inseridos no campo de cobranca    985abc6

CT005 - Voltar para tela inicial apos acessar funcionalidade de COBRAR clicando no X
    Dado que o usuário está logado no aplicativo
    Quando o usuario estar na tela de Cobrar
    Então consegue retornar para tela inicial clicando no x
