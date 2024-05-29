*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${PAGAR}                      xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${AREA_PAGAR}                 xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View
${PAGAR_PIX}                  xpath=//android.view.View[@content-desc="Pagar com Pix\nLeia um QR Code ou cole o código."]
${PAGAR_CARTAO}               xpath=//android.view.View[@content-desc="Pagar fatura do cartão\nLibera o limite do seu Cartão de Crédito."]
${PAGAR_BOLETO}               xpath=//android.view.View[@content-desc="Pagar um boleto\nContas de luz, água, etc."]


*** Keywords ***
E acessar a funcionalidade de Pagar
    Clica no atalho    ${PAGAR}

Então consegue visualizar todas as opcoes de Pagamento
    Visualiza o atalho    ${PAGAR_PIX}
    Visualiza o atalho    ${PAGAR_CARTAO}
    Visualiza o atalho    ${PAGAR_BOLETO}

E esta na tela de funcionalidade de Pagar
    Clica no atalho       ${PAGAR}
    Visualiza o atalho    ${PAGAR_PIX}
    Visualiza o atalho    ${PAGAR_CARTAO}
    Visualiza o atalho    ${PAGAR_BOLETO}    
