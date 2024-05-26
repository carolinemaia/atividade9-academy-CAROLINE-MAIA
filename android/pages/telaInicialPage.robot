*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${DADOS_NOME}                 xpath=//android.view.View[@content-desc="Olá, Breno Freitas"]
${DADOS_CONTA}                xpath=//android.view.View[contains(@content-desc,'Conta')]
${ICON_PERFIL}                xpath=//android.widget.ScrollView/android.view.View[1]
${ICON_OLHO}                  xpath=//android.widget.ScrollView/android.widget.Button[1]
${ICON_AJUDA}                 xpath=//android.widget.ScrollView/android.widget.Button[2]
${ICON_EMAIL}                 xpath=//android.widget.ScrollView/android.widget.Button[3]
${WHATSAPP}                   xpath=//android.view.View[contains(@content-desc,'WhatsApp')]
${MEUS_CARTOES}               xpath=//android.view.View[@content-desc="Meus cartões"]
${EMPRESTIMO}                 xpath=//android.view.View[@content-desc="Você tem R$ 10.000,00 disponíveis para empréstimo."]
${NOVO_EMPRESTIMO}            xpath=//android.widget.Button[@content-desc="NOVO EMPRÉSTIMO"]
${GUARDAR_DINHEIRO}           xpath=//android.view.View[@content-desc="Conquiste planos futuros: conheça as opções para guardar dinheiro."]
${FECHAR}                     xpath=//android.widget.Button


*** Keywords ***
Dado que o usuário está logado no aplicativo
    Open App

Quando o usuário está na tela inicial
    Wait Until Page Contains Element    ${DADOS_NOME}    10
    Page Should Contain Element         ${ICON_PERFIL}
    Page Should Contain Element         ${ICON_OLHO}
    Page Should Contain Element         ${ICON_AJUDA}
    Page Should Contain Element         ${ICON_EMAIL}

#MELHORAR CASO DE TESTE PRA QUE SE ACHAR O ELEMENTO NO FINAL DA TELA SUBIR ATE O INICIO
Então consegue navegar até o final da tela
    Swipe    640    2032    640    121
    Wait Until Page Contains Element        ${WHATSAPP}
    Swipe    640    68     640    2032
    Wait Until Page Contains Element        ${DADOS_NOME}

Então consegue visualizar seu Nome
    Wait Until Page Contains Element    ${DADOS_NOME}    10s
    ${content_desc}=    Get Element Attribute    ${DADOS_NOME}    content-desc
    Page Should Contain Text    ${content_desc}    Olá, Breno Freitas
Então consegue visualizar saldo atual da Conta
    Element Should Be Visible      ${DADOS_CONTA}

Então consegue navegar entre os atalhos de movimentação de moeda
    Swipe    872    872    238    872
    Swipe    248    872    872    872
    Swipe    872    872    238    872

Então consegue visualizar o atalho Meus Cartões
    Visualiza o atalho    ${MEUS_CARTOES}

E consegue clicar no atalho Meus Cartões
    Clica no atalho       ${MEUS_CARTOES}

Então o usuário consegue visualizar a opcao de Emprestimo
    Visualiza o atalho    ${EMPRESTIMO}

Então acessa a funcionalidade de Emprestimo
    Clica no atalho       ${EMPRESTIMO}

E visualiza opcao de solicitar novo emprestimo
    Visualiza o atalho    ${NOVO_EMPRESTIMO}

Então consegue visualizar o atalho Guardar Dinheiro
    Swipe    500    1466    0    1466
    Visualiza o atalho    ${GUARDAR_DINHEIRO}

E consegue clicar no atalho Guardar Dinheiro
    Swipe    500    1466    0    1466
    Clica no atalho       ${GUARDAR_DINHEIRO}

    





    

    
    


