*** Settings ***

Resource        ../resources/base.robot
# Executa a Kw antes de cada Testcase
Test Setup        Open Session
# Executa a KW depois de cada Testecase
Test Teardown     Close Session    
# Execucao no terminal robot -d ./logs tests/nav.robot


# start_x - x-percent at which to start
# start_y - y-percent at which to start
# end_x - x-percent distance from start_x at which to stop
# end_y - y-percent distance from start_y at which to stop
# duration - (optional) time to take the swipe, in ms.

# y 18.22  => 
# x 88.88

# y 18.22
# x 47.22

*** Variables ***

${BTN_REMOVE}=        io.qaninja.android.twp:id/btnRemove

*** Test Cases ***
Cenario 01 : Deve remover o capitão América
    Go To Avenger List

    Swipe By Percent        88.88    18.22    47.22    18.22

    Wait Until Element Is Visible        ${BTN_REMOVE}
    Click Element                        ${BTN_REMOVE}







    
