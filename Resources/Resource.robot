*** Settings ***
Library      SeleniumLibrary


*** Variables ***
${Browser}       chrome
${URL}           http://localhost:8080/usuarios
${TitlePage}     Cadastro de usuários
${CampoNome}     id=nomeUsuario
${CampoEmail}    id=emailUsuario
${ButtonSave}    id=salvarUsuario
${NameUser}      Teste
${EmailUser}     teste@gmail.com


*** Keywords ***
que seja aberto a tela de cadastro
  Open Browser    ${Browser}
  Title Should Be    ${TitlePage}

realizado o cadastro do usuário
  Click Element    ${CampoNome}
  Input Text    ${CampoNome}    ${NameUser}
  Click Element    ${CampoEmail}
  Input Text    ${CampoEmail}    ${EmailUser}
  Click Button    ${ButtonSave}

o cadastro do usuário é realizado
  Page Should Contain    ${NameUser}
  Close Browser
