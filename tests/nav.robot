*** Settings ***
Resource        ../resources/base.robot
# Executa a Kw antes de cada Testcase
Test Setup        Open Session
# Executa a KW depois de cada Testecase
Test Teardown     Close Session    
# Execucao no terminal robot -d ./logs tests/nav.robot

*** Variables ***
${TOOLBAR_TITLE}        id=io.qaninja.android.twp:id/toolbarTitle        

*** Test Cases ***
Cenario 01 : Deve abrir a tela Dialogs
    Open navigation

    Click Text                          DIALOGS
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}        
    Element Text Should Be              ${TOOLBAR_TITLE}           DIALOGS

   

Cenario 02 : Deve abrir a tela Forms
    Open navigation

    Click Text                          FORMS
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}        
    Element Text Should Be              ${TOOLBAR_TITLE}           FORMS
   


Cenario 03 : Deve acessar a tela de vingadores
    Open navigation

    Click Text                          AVENGERS
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}        
    Element Text Should Be              ${TOOLBAR_TITLE}        AVENGERS




      