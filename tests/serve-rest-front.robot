*** Settings ***
Resource        ../resources/serve-rest-front.resource
Suite Setup     Cadastrar usuario e logar
Suite Teardown  Close Browser    ALL


*** Test Cases ***

Login com sucesso Serv Rest Front
    [Tags]    Login    serv_rest_tests
    Abrir o navegador
    Ir para o site Serv Rest Front
    Preencher os dados do novo usuario e cadastrar
    Conferir usuario cadastrado com sucesso

Desafio: Conferir se o novo usuário é mostrado na listagem de usuários
    [Tags]    lista_usuários
# CADASTRAR NONO USUÁRIO FOI REAPROVEITADO AS KEYWORDS
    Cadastrar novo usuário
    Acessar a Lista de usuários
    Conferir que o usuário aparece na listagem
Desafio2: Cadastrar um novo produto e validar se o mesmo é exibido na listagem de produtos
    [Tags]    cad_produtos
    Cadastrar novo usuário
    Cadastrar um novo produto
    Conferir que o produto aparece na listagem

Exemplo utilizando Requisições HTTP
    [Tags]    HTTP
    Abrir o navegador
    Ir para o site Serv Rest Front
    Criar usuario via API
    Logar com o usuário cadastrado via API

Exemplo utilizando o Storage armazenado no contexto
    [Tags]    storage_contexto
    Abrir o Site Serve Rest Front Logado
    Acessar a Lista de usuários