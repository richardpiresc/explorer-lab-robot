*** Settings ***
Resource    resource.robot

*** Test Cases ***
Caso de Teste 01: Abrir página 
        Acessar pagina
        Digitar numero do cartao "1111111111111111"
        Digitar nome do cartao "Testando nome"
        Digitar data de expiracao "1222"
        Digitar codigo de seguranca "999"
        Clicar em adicionar cartao
        Fechar navegador