*** Settings ***
Resource     ../Resources/BDDpt-br.robot

*** Test Cases ***
Cenario: Cadastro de usuário
  Dado que seja aberto a tela de cadastro
  Quando realizado o cadastro do usuário
  Então o cadastro do usuário é realizado
