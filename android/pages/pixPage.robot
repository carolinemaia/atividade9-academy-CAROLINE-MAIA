*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${PIX}                        xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${AREA_PIX}                   xpath=//android.widget.ImageView[@content-desc="Minha área Pix\nTudo o que você precisa para pagar, transferir ou cobrar.\nPagar\nTransferir\nCobrar"]
${QRCODE_PIX}                 xpath=//android.widget.ImageView/android.widget.Button[2]
${ICON_ENVIAR_PIX}            xpath=//android.widget.ImageView/android.widget.Button[3]
${ICON_AJUDA_PIX}             xpath=//android.widget.ImageView/android.widget.Button[4]
${CHAVES_PIX}                 xpath=//android.view.View[@content-desc="Minhas chaves"]
${LIMITES_PIX}                xpath=//android.view.View[@content-desc="Meu limite Pix"]
${MEAJUDA_PIX}                xpath=//android.view.View[@content-desc="Me ajuda"]
${FECHAR_PIX}                 xpath=//android.widget.ImageView/android.widget.Button[1]

*** Keywords ***
Então consegue acessar a funcionalidade de PIX
    Clica no atalho       ${PIX}
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
Então consegue retornar para tela inicial clicando no x do pix
    Clica no atalho       ${FECHAR_PIX}
    Visualiza o atalho    ${DADOS_NOME}

Então consegue retornar para tela inicial arrastando a tela para baixo
    Swipe By Percent    50    15    50    85    1000
    Visualiza o atalho    ${DADOS_NOME}