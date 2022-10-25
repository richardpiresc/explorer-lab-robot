*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}          https://explorer-lab-nine.vercel.app/
${BROWSER}      edge
${INP-CARDNUMBER}      css=input#card-number
${INP-CARDNAME}     css=input#card-holder
${INP-EXPIRATIONDATE}   css=input#expiration-date
${INP-SECURITYCODE}     css=input#security-code
${BTN-ADICIONARCARTAO}      css=button#add-card

*** Keywords ***
Acessar pagina
    Open Browser    url=${URL}  browser=${BROWSER}
    Title Should Be     Rocketpay

Digitar numero do cartao "${NUMERO-DO-CARTAO}"
    Input text      ${INP-CARDNUMBER}   ${NUMERO-DO-CARTAO}

Digitar nome do cartao "${NOME-DO-CARTAO}"
    Input text      ${INP-CARDNAME}     ${NOME-DO-CARTAO}

Digitar data de expiracao "${DATA-DE-EXPIRACAO}"
    Input text      ${INP-EXPIRATIONDATE}   ${DATA-DE-EXPIRACAO}

Digitar codigo de seguranca "${CVC-DO-CARTAO}"
    Input text      ${INP-SECURITYCODE}     ${CVC-DO-CARTAO}

Clicar em adicionar cartao
    Click button        ${BTN-ADICIONARCARTAO}

Fechar navegador
    Close browser
