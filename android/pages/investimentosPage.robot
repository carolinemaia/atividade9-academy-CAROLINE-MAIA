*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${INVESTIMENTOS}                 xpath=//android.view.View[@content-desc="Investimentos\nA revolução roxa começou. Invista de maneira simples, sem burocracia e 100% digital."]
${INVESTIMENTOS_CONHECER}        xpath=//android.view.View[@content-desc="Conhecer"]
${INVESTIMENTOS_INFO_TITULO}     xpath=//android.view.View[@content-desc="Invista sem taxas e burocracia!"]
${INVESTIMENTOS_INFO_TEXTO}      xpath=//android.view.View[@content-desc="Estamos convidando alguns clientes do Nubank para serem os primeiros a fazer parte desta revolução roxa nos investimentos, e você é um deles!"]

*** Keywords ***
Então deve ser possivel visualizar a funcionalidade de Investimentos
    Swipe By Percent    50    95    50    10    1000
    Visualiza o atalho    ${INVESTIMENTOS}

Então deve ser possivel acessar a funcionalidade de Investimento clicando em Conhecer Mais
    Swipe By Percent    50    95    50    10    1000
    Clica no atalho    ${INVESTIMENTOS_CONHECER}

E visualizar mais informações de investimento
    Visualiza o atalho    ${INVESTIMENTOS_INFO_TITULO}
    Visualiza o atalho    ${INVESTIMENTOS_INFO_TEXTO}

    
