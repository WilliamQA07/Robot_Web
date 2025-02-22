*** Settings ***
Library     SeleniumLibrary
Resource    ../utils/secrets.robot
Resource    ../utils/variables.robot
Resource    ../resources/keywords.robot

*** Test Cases ***
Login com Sucesso
    [Tags]  login  positivo
    Abrir Navegador   ${URL}  ${BROWSER}
    Fazer Login       ${USER}  ${SENHA}
    Verificar Login Sucesso
    Fechar Navegador

Login com Senha Incorreta
    [Tags]  login  negativo
    Abrir Navegador   ${URL}  ${BROWSER}
    Fazer Login       ${USER}  senhaErrada
    Verificar Mensagem Erro
    Fechar Navegador
