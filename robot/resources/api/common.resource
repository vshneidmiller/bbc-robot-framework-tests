*** Settings ***
Library     RequestsLibrary


*** Variables ***
${SESSION_ALIAS}    my_session
${BASE_URL}         https://www.bbc.co.uk


*** Keywords ***
Create Headers and Session
    ${headers}    Create Dictionary
    ${session}    Create Session    alias=${SESSION_ALIAS}    url=${BASE_URL}    headers=&{headers}

Get User Info
    ${resp}    GET On Session    alias=${SESSION_ALIAS}    url=${BASE_URL}/userinfo
    ${Resp}    Set Test Variable    ${resp}
