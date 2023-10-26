*** Settings ***
Documentation    Essa suíte testa o site da Amazon.com.br  
Resource         amazon_resources.robot   
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Mais Vendidos"
    [Documentation]    Esse teste verifica o menu Mais Vendidos do site da Amazon.com.br
    ...                e verifica os itens mais vendidos do site
    [Tags]             menus    categorias
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Mais Vendidos"
    Verificar se aparece a frase "Mais Vendidos em Ferramentas e Materiais de Construção"
    Verificar se o título da página fica "Amazon.com.br Mais Vendidos: Os itens mais populares na Amazon"
# Caso de Teste 02 - Pesquisa de um Produto
#     [Documentation]    Esse teste verifica a busca de um produto
#     [Tags]             busca_produtos    lista_busca
#     Acessar a home page do site Amazon.com.br
#     Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#     Clicar no botão de pesquisa
#     Verificar o resultado da pesquisa se está listando o produto pesquisado 