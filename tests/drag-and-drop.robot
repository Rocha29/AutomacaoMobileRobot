*** Settings ***

Resource        ../resources/base.robot
# Executa a Kw antes de cada Testcase
Test Setup        Open Session
# Executa a KW depois de cada Testecase
Test Teardown     Close Session    
# Execucao no terminal robot -d ./logs tests/nav.robot


*** Test Cases ***
Cenario 01 : Deve mover o hulk para o topo da lista 
    Go To Avenger List

    Drang And Drop        io.qaninja.android.twp:id/drag_handle     3       0

    
    

