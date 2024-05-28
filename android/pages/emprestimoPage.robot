*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${EMPRESTIMO_ICONE}           xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${EMPRESTIMO_ATIVO}           xpath=//android.view.View[@content-desc="Você não possui nenhum empréstimo ativo."]
${EMPRESTIMO}                 xpath=//android.view.View[@content-desc="Você tem R$ 10.000,00 disponíveis para empréstimo."]
${EMPRESTIMO_VALOR}           xpath=//android.view.View[@content-desc="O valor disponível no momento é de R$ 10.000,00"]
${NOVO_EMPRESTIMO}            xpath=//android.widget.Button[@content-desc="NOVO EMPRÉSTIMO"]
${EMPRESTIMO_INFO_MUDANCA}    xpath=//android.view.View[@content-desc="Este valor pode mudar diariamente devido à nossa análise de crédito."]
${EMPRESTIMO_INFO}            xpath=//android.view.View[@content-desc="Entenda como funciona >"]
${EMPRESTIMO_NOVO}            xpath=//android.widget.Button[@content-desc="NOVO EMPRÉSTIMO"]
${EMPRESTIMO_AJUDA}           xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[2]



*** Keywords ***
Então visualiza todas informações sobre valor de Emprestimo
    Visualiza o atalho    ${EMPRESTIMO_VALOR}
    Visualiza o atalho    ${EMPRESTIMO_INFO_MUDANCA}
    Visualiza o atalho    ${EMPRESTIMO_INFO}

Então o usuário consegue visualizar a opcao de Emprestimo
    Visualiza o atalho    ${EMPRESTIMO}

Então acessa a funcionalidade de Emprestimo
    Clica no atalho       ${EMPRESTIMO}

Quando o usuário acessa a funcionalidade de Emprestimo
    Swipe By Percent    50    90    50    40    1000
    Clica no atalho       ${EMPRESTIMO}

E visualiza opcao de solicitar novo emprestimo
    Visualiza o atalho    ${NOVO_EMPRESTIMO}

Então consegue acessar a funcionalidade de Emprestimo
    Swipe    872    872    238    872
    Clica no atalho        ${EMPRESTIMO_ICONE}

Quando o usuário está na tela de Emprestimo
    Swipe    872    872    238    872
    Clica no atalho        ${EMPRESTIMO_ICONE}

Entao visualiza informacao se ha emprestimo ativo
    Visualiza o atalho     ${EMPRESTIMO_ATIVO}

Então visualiza icone de ajuda
    Clica no atalho    ${EMPRESTIMO_AJUDA}
    
    

