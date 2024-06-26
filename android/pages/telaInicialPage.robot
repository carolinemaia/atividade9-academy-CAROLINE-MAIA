*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot
Library    XML

*** Variables ***
${DADOS_NOME}                 xpath=//android.view.View[@content-desc="Olá, Breno Freitas"]
${CREDITO}                    xpath=//android.view.View[contains(@content-desc, "Cartão de Crédito")]
${EMPRES}                     xpath=//android.view.View[contains(@content-desc, "Empréstimo")]
${DADOS_CONTA}                xpath=//android.view.View[@content-desc="Conta\nR$ 181,79"]
${ICON_PERFIL}                xpath=//android.widget.ScrollView/android.view.View[1]
${ICON_OLHO}                  xpath=//android.widget.ScrollView/android.widget.Button[1]
${ICON_AJUDA}                 xpath=//android.widget.ScrollView/android.widget.Button[2]
${ICON_INDICAR}                xpath=//android.widget.ScrollView/android.widget.Button[3]
${WHATSAPP}                   xpath=//android.view.View[contains(@content-desc,'WhatsApp')]
${MEUS_CARTOES}               xpath=//android.view.View[@content-desc="Meus cartões"]
${GUARDAR_DINHEIRO}           xpath=//android.view.View[@content-desc="Conquiste planos futuros: conheça as opções para guardar dinheiro."]
${FECHAR}                     xpath=//android.widget.Button
${SEGURO_VIDA}                xpath=//android.view.View[@content-desc="Seguro de vida\nConheça Nubank Vida: um seguro simples e que cabe no bolso."]
${DESCUBRA_WHATS}             xpath=//android.view.View[@content-desc="WhatsApp\nNovo\nPagamentos seguros, rápidos e sem tarifa. A experiência Nubank sem nem sair da conversa."]
${DESCUBRA_WHATS_BUTTON}      xpath=//android.view.View[@content-desc="Quero conhecer"]
${DESCUBRA_INDICAR}           xpath=//android.view.View[@content-desc="Indique seus amigos\nMostre aos seus amigos como é fácil ter uma vida sem burocracia."]
${DESCUBRA_INDICAR_BUTTON}    xpath=//android.view.View[@content-desc="Indicar amigos"]
${DESCUBRA_INDICAR_INFO}      xpath=//android.widget.ImageView[@content-desc="Resgate seus amigos da fila do banco\nPara cada indicação aceita, um amigo salvo da burocracia"]
${FECHAR}                     xpath=//android.widget.Button

*** Keywords ***
Dado que o usuário está logado no aplicativo
    Open App

Quando o usuário está na tela inicial
    Wait Until Page Contains Element    ${DADOS_NOME}    
    Page Should Contain Element         ${ICON_PERFIL}
    Page Should Contain Element         ${ICON_OLHO}
    Page Should Contain Element         ${ICON_AJUDA}
    Page Should Contain Element         ${ICON_INDICAR}

Então consegue navegar até o final da tela
    Swipe By Percent    40    95    40    10    1000
    Wait Until Page Contains Element        ${WHATSAPP}
    
E retornar para o inicio da tela
    Swipe By Percent    40    10    40    90    1000
    Wait Until Page Contains Element        ${DADOS_NOME}

Então consegue visualizar seu Nome
    Wait Until Page Contains Element    ${DADOS_NOME}    10s
    ${content_desc}=    Get Element Attribute    ${DADOS_NOME}    content-desc
    Page Should Contain Text    ${content_desc}    Olá, Breno Freitas

E icone de perfil
    Visualiza o atalho    ${ICON_PERFIL}

Então consegue ocultar todos os valores da tela inicial
    Espera para clicar no botão    ${ICON_OLHO}
    ${content_desc}=    Get Element Attribute    ${CONTA}    content-desc
    Should Not Contain    ${content_desc}    R$ 181,79

    Swipe By Percent    50    80    50    40    1000
    ${content_desc}=    Get Element Attribute    ${CREDITO}    content-desc
    Should Not Contain    ${content_desc}    R$ 780,72

    ${content_desc}=    Get Element Attribute    ${EMPRES}    content-desc
    Should Not Contain    ${content_desc}    R$ 10.000,00

Então consegue visualizar opção de Ajuda
    Clica no atalho    ${ICON_AJUDA}

Então consegue acessar funcionalidade pelo icone no topo da tela
    Clica no atalho    ${ICON_INDICAR}

Então consegue visualizar saldo atual da Conta
    Element Should Be Visible      ${DADOS_CONTA}

Então consegue navegar entre os atalhos de movimentação de moeda
    Swipe By Percent    75    50    0    50    1000
    Swipe By Percent    75    50    0    50    1000

Então consegue visualizar o atalho Meus Cartões
    Visualiza o atalho    ${MEUS_CARTOES}

E consegue clicar no atalho Meus Cartões
    Clica no atalho       ${MEUS_CARTOES}

Então consegue visualizar no atalho o valor disponivel para empréstimo
    Visualiza o atalho    ${EMPRESTIMO_ATALHO}

Então consegue visualizar o atalho Guardar Dinheiro
    Swipe    500    1466    0    1466
    Swipe    500    1466    0    1466
    Visualiza o atalho    ${GUARDAR_DINHEIRO}

E consegue clicar no atalho Guardar Dinheiro
    Swipe    500    1466    0    1466
    Swipe    500    1466    0    1466
    Clica no atalho       ${GUARDAR_DINHEIRO}

Então deve ser possível visualizar a funcionalidade de Seguro de Vida
    Visualiza o atalho    ${SEGURO_VIDA}

E desliza tela para baixo
    Swipe By Percent    40    95    40    10    1000

Então visualiza opção de conhecer funções no WhatsApp
    Visualiza o atalho    ${DESCUBRA_WHATS}

E conhecer mais clicando em Quero conhecer
    Clica no atalho    ${DESCUBRA_WHATS_BUTTON}

Então deve ser possivel acessar a funcionalidade de indicar amigos
    Wait Until Element Is Visible    ${DESCUBRA_INDICAR}
    Swipe By Percent    90    20    20    10    1000
    Visualiza o atalho    ${DESCUBRA_INDICAR}
    Clica no atalho       ${DESCUBRA_INDICAR_BUTTON}

E deve conseguir visualizar mais informações sobre indicar amigos
    Visualiza o atalho    ${DESCUBRA_INDICAR_INFO}

Então consegue retornar para tela inicial deslizando tela para baixo
    Swipe By Percent    50    15    50    85    1000
    Visualiza o atalho    ${DADOS_NOME}

E consegue retornar para tela inicial deslizando tela para baixo
    Swipe By Percent    50    15    50    85    1000
    Visualiza o atalho    ${DADOS_NOME}
    
 #utilizado em telas comuns
 Então consegue retornar para tela inicial clicando no x
     Espera para clicar no botão    ${FECHAR}

E consegue retornar para tela inicial clicando no x
    Espera para clicar no botão    ${FECHAR}    





    

    
    


