*** Settings ***

Resource    ../../base.robot

Test Teardown     Teardown

*** Test Cases ***

CT001 - Acessar funcionalidade de Transferencia
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue acessar a funcionalidade de Transferencia
    E o campo para inserir o valor deve estar zerado

CT002 - Deve ser possivel digitar um valor na tela de Transferencia
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Transferencia
    Então consegue inserir um valor numerico no campo de inserir valor

CT003 - Nao deve ser possivel considerar caracteres diferente de numero na tela de Transferencia
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Transferencia
    Então nao deve considerar caractere diferente de numero no campo de inserir valor

CT004 - Nao deve ser possivel considerar numero maior que 14 digitos
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Transferencia
    Então nao deve considerar valor inserido apos 14 digitos

CT005 - Deve ser possivel clicar no icone de QRCode na tela de Transferencia
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Transferencia
    Então consegue clicar no icone de Qrcode

CT006 - Voltar para tela inicial apos acessar funcionalidade de TRANSFERÊNCIA clicando no X
    Dado que o usuário está logado no aplicativo
    Quando o usuario esta na tela de Transferencia
    Então consegue retornar para tela inicial clicando no x da transferência