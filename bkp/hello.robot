*** Settings ***
Library        hello.py


*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${resultado}=         Hello Robot
    Should Be Equal        ${resultado}        Olha bem vindo
