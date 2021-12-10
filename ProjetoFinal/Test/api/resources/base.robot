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


Creating json File
    Create File         ./api/resources/files/post/file_json.json          {"nome":"Robot Vet","email":"vet_robot@email.com","celular":"51935654132"}

Post Vet
    [Arguments]            ${ID}
    
    DELETE          url=http://localhost:3000/${URI}/${ID}

    ${BODY}=    Create Dictionary    nome=Robot Vet     email=vet_robot@email.com        celular=51935654132
   
    ${resp}=    POST    http://localhost:3000/${URI}     json=${BODY}
   
    Status Should Be    201    ${resp}

    Log         ${resp.json()}