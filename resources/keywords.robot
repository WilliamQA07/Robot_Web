*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Abrir Navegador
    [Arguments]   ${url}  ${browser}
    Open Browser  ${url}  ${browser}
    Maximize Browser Window

Fazer Login
    [Arguments]   ${usuario}        ${senha}
    Input Text    id=login_field    ${usuario}
    Input Text    id=password       ${senha}
    Click Button  name=commit

Verificar Login Sucesso
    Wait Until Page Contains    Device Verification Code   timeout=10s

Verificar Mensagem Erro
    Wait Until Page Contains    Incorrect username or password.

Fechar Navegador
    Close Browser
