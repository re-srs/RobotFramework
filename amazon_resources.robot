*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.amazon.com.br
${LOGO_AMAZON}    (//a[contains(@href,'logo')])[1]
${MENU_MAIS_VENDIDOS}    //header/div[@id='navbar']/div[@id='nav-main']/div[2]/div[2]/div[1]/a[2]
${HEADER_MAIS_VENDIDOS}    //h2[contains(text(),'Mais Vendidos em Ferramentas e Materiais de Constr')]
    

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${LOGO_AMAZON}

Entrar no menu "Mais Vendidos"
    Click Element    locator=${MENU_MAIS_VENDIDOS}

Verificar se aparece a frase "${TEXTO_HEADER_MAIS_VENDIDOS}"
    Wait Until Page Contains    text=${TEXTO_HEADER_MAIS_VENDIDOS}
    Wait Until Element Is Visible    locator=${HEADER_MAIS_VENDIDOS}

Verificar se o título da página fica "${TITULO_PAGINA}"
    Title Should Be    title=${TITULO_PAGINA}





    