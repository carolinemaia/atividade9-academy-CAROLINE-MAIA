*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${EMPRESTIMO_ICONE}        xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${EMPRESTIMO_ATIVO}        xpath=//android.view.View[@content-desc="Você não possui nenhum empréstimo ativo."]



*** Keywords ***
Então consegue acessar a funcionalidade de Emprestimo
    Swipe    872    872    238    872
    Clica no atalho        ${EMPRESTIMO_ICONE}

Quando o usuário está na tela de Emprestimo
    Swipe    872    872    238    872
    Clica no atalho        ${EMPRESTIMO_ICONE}

Entao visualiza informacao se ha emprestimo ativo
    Visualiza o atalho     ${EMPRESTIMO_ATIVO}
    
    

