*** Settings ***

Resource    ../../base.robot

#Test Setup        Open App
Test Teardown     Teardown

*** Test Cases ***

CT001 - Acessar funcionalidade de Recarga de Celular
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela inicial
    Então consegue acessar a funcionalidade de Recarga de Celular
    E visualiza o campo para inserir o numero de telefone

CT002 - Deve ser possivel inserir numero de celular com 11 digitos
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela de Recarga de Celular
    Então consegue inserir numero de telefone com 11 digitos

CT003 - Nao deve ser possivel considerar caracteres diferente de numero na tela de Recarga de Celular
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela de Recarga de Celular
    Então nao deve considerar caractere diferente de numero no campo de inserir telefone

CT004 - Nao deve ser possivel considerar numero de telefone maior que 11 digitos na tela de Recarga de Celular
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela de Recarga de Celular
    Então nao deve considerar valor inserido apos inserir telefone com 11 digitos

CT005 - Voltar para tela inicial apos acessar funcionalidade de RECARGA clicando no X
    Dado que o usuário está logado no aplicativo
    Quando o usuário está na tela de Recarga de Celular
    Então consegue retornar para tel inicial clicando no x de recarga

