*** Settings ***
Library         Collections
Library         RequestsLibrary
Library         JSONLibrary
Resource        ../../resources/api/common.resource

Suite Setup     Create Headers and Session


*** Test Cases ***
User Info
    [Tags]   smoke
    Get User Info
    Should Be Equal    ${Resp.json()['X-Country']}    gb
    Should Be Equal    ${Resp.json()['X-Ip_is_uk_combined']}    yes
    Should Be Equal    ${Resp.json()['X-Ip_is_advertise_combined']}    no

Idcta Config
    [Tags]    run
    Get Idcta Config
    Validate Json By Schema File    ${Resp.json()}    ${EXECDIR}/data/schema.json
