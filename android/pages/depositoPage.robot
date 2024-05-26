*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${DEPOSITAR}             xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${DEPOSITAR_TELA}        xpath=//android.view.View[@content-desc="Como você quer depositar na sua conta do Nubank"]
${DEPOSITAR_PIX}         xpath=//android.view.View[@content-desc="Pix\nSem custo e cai na hora, mesmo de madrugada e fim de semana."]
${DEPOSITAR_BOLETO}      xpath=//android.view.View[@content-desc="Boleto\nSem custo e pode levar 3 dias úteis para o dinheiro cair."]
${DEPOSITAR_TED}         xpath=//android.view.View[@content-desc="TED/DOC\nPode ter custo e cai somente em horário comercial de dias úteis."]
${DEPOSITAR_SALARIO}     xpath=//android.view.View[@content-desc="Trazer seu salário\nReceba todo mês direto aqui na sua conta, sem custo."]
 

*** Keywords ***
Então consegue acessar a funcionalidade de Depósito
    Clica no atalho       ${DEPOSITAR}
    Visualiza o atalho    ${DEPOSITAR_TELA}

E consegue visualizar todas as funcoes para depositar
    Visualiza o atalho    ${DEPOSITAR_PIX}
    Visualiza o atalho    ${DEPOSITAR_BOLETO}
    Visualiza o atalho    ${DEPOSITAR_TED}
    Visualiza o atalho    ${DEPOSITAR_SALARIO}

Quando o usuario esta na tela de Depósito
    Clica no atalho       ${DEPOSITAR}

Então consegue retornar para tela inicial clicando no x de depósito
    Clica no atalho       ${FECHAR}
    Visualiza o atalho    ${DADOS_NOME}
    
    