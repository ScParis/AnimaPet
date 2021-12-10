*** Settings ***
Documentation       Exemplos da própria Library

Library             RequestsLibrary
Library             Collections
Library             OperatingSystem
# Resource            ../resources/variables/variables.robot

*** Variables ***
${HOST}      http://localhost:3000/
${URI}       veterinario

*** Keywords ***
Conectar A API Do Projeto

    Create Session      alias=mygithubAuth    url=${HOST}       disable_warnings=True

Realizar Requisição de GET ALL
    ${VET_DATA}         GET          url=http://localhost:3000/${URI}
    Log                 Retorno com todos os cadastros: ${VET_DATA.json()}

    ${RESPOSTA}=        GET          url=http://localhost:3000/${URI}
    
    Log                 Resposta: ${RESPOSTA.text}

    Set Test Variable   ${RESPOSTA}

Realizar Requisição de GET By ID

    [Arguments]        ${ID}

    ${VET_DATA}         GET          url=http://localhost:3000/${URI}/${ID}    
    Log                 Retorno com todos os cadastros: ${VET_DATA.json()}

    ${RESPOSTA}=        GET          url=http://localhost:3000/${URI}/${ID}
    
    Log                 Resposta: ${RESPOSTA.text}

    Set Test Variable   ${RESPOSTA}

Realizar Requisição de DELETE By ID

    [Arguments]        ${ID}

    DELETE          url=http://localhost:3000/${URI}/${ID}    
    
    ${RESPOSTA}=        DELETE          url=http://localhost:3000/${URI}/${ID}
    
    Log                 Resposta: ${RESPOSTA.text}

    Set Test Variable   ${RESPOSTA}

Confere o status code

    [Arguments]     ${STATUS_ESPERADO}

    Should Be Equal As Strings   ${RESPOSTA.status_code}  ${STATUS_ESPERADO}

    Log             Status Code Retornado: ${RESPOSTA.status_code} -- Status Code Esperado: ${STATUS_ESPERADO}



    # Confere sucesso na requisição   ${MY_USER_DATA}

# Conectar na API do GitHub sem autenticação
#     Create Session      alias=mygithub        url=${GITHUB_HOST}     disable_warnings=True

# Pesquisar issues com o state "${STATE}" e com o label "${LABEL}"
#     &{PARAMS}           Create Dictionary    state=${STATE}       labels=${LABEL}
#     ${MY_ISSUES}        Get Request          alias=mygithub       uri=${ISSUES_URI}    params=${PARAMS}
#     Log                 Lista de Issues: ${MY_ISSUES.json()}
#     Confere sucesso na requisição   ${MY_ISSUES}

# Enviar a reação "${REACTION}" para a issue "${ISSUE_NUMBER}"
#     ${HEADERS}          Create Dictionary    Accept=application/vnd.github.squirrel-girl-preview+json
#     ${MY_REACTION}      Post Request    alias=mygithubAuth    uri=${ISSUES_URI}/${ISSUE_NUMBER}/reactions
#     ...                                 data={"content": "${REACTION}"}     headers=${HEADERS}
#     Log                 Meus dados: ${MY_REACTION.json()}
#     Confere sucesso na requisição   ${MY_REACTION}

# Confere sucesso na requisição
#     [Arguments]      ${RESPONSE}
#     Should Be True   '${RESPONSE.status_code}'=='200' or '${RESPONSE.status_code}'=='201'
#     ...  msg=Erro na requisição! Verifique: ${RESPONSE}
