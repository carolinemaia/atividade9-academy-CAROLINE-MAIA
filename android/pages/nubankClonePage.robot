*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${DADOS_NOME}         xpath=//android.view.View[@content-desc="Olá, Breno Freitas"]
${DADOS_CONTA}        xpath=//android.view.View[contains(@content-desc,'Conta')]
${ICON_PERFIL}        xpath=//android.widget.ScrollView/android.view.View[1]
${ICON_OLHO}          xpath=//android.widget.ScrollView/android.widget.Button[1]
${ICON_AJUDA}         xpath=//android.widget.ScrollView/android.widget.Button[2]
${ICON_EMAIL}         xpath=//android.widget.ScrollView/android.widget.Button[3]
${WHATSAPP}           xpath=//android.view.View[contains(@content-desc,'WhatsApp')]
${MEUS_CARTOES}       xpath=//android.view.View[@content-desc="Meus cartões"]
${EMPRESTIMO}         xpath=//android.view.View[@content-desc="Você tem R$ 10.000,00 disponíveis para empréstimo."]
${NOVO_EMPRESTIMO}    xpath=//android.widget.Button[@content-desc="NOVO EMPRÉSTIMO"]
${GUARDAR_DINHEIRO}   xpath=//android.view.View[@content-desc="Conquiste planos futuros: conheça as opções para guardar dinheiro."]
${PIX}                xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${AREA_PIX}           xpath=//android.widget.ImageView[@content-desc="Minha área Pix\nTudo o que você precisa para pagar, transferir ou cobrar.\nPagar\nTransferir\nCobrar"]
${QRCODE_PIX}         xpath=//android.widget.ImageView/android.widget.Button[2]
${ICON_ENVIAR_PIX}    xpath=//android.widget.ImageView/android.widget.Button[3]
${ICON_AJUDA_PIX}     xpath=//android.widget.ImageView/android.widget.Button[4]
${CHAVES_PIX}         xpath=//android.view.View[@content-desc="Minhas chaves"]
${LIMITES_PIX}        xpath=//android.view.View[@content-desc="Meu limite Pix"]
${MEAJUDA_PIX}        xpath=//android.view.View[@content-desc="Me ajuda"]
${FECHAR_PIX}         xpath=//android.widget.ImageView/android.widget.Button[1]



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

E clica no atalho de PIX
    Clica no atalho       ${PIX}

Então consegue acessar a funcionalidade de PIX
    Visualiza o atalho    ${AREA_PIX}

E consegue visualizar todas as funcoes do PIX
    Visualiza o atalho    ${QRCODE_PIX}
    Visualiza o atalho    ${ICON_ENVIAR_PIX}
    Visualiza o atalho    ${CHAVES_PIX}
    Visualiza o atalho    ${LIMITES_PIX}
    Visualiza o atalho    ${MEAJUDA_PIX}

E esta na tela de funcionalidade de PIX
    Clica no atalho       ${PIX}
    Visualiza o atalho    ${AREA_PIX}
Então consegue retornar para tela inicial clicando no x
    Clica no atalho       ${FECHAR_PIX}
    Visualiza o atalho    ${DADOS_NOME}

Então consegue retornar para tela inicial arrastando a tela para baixo
    Clica no atalho    ${AREA_PIX}


    





    

    
    


