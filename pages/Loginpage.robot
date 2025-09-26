*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/Loginlocator.robot
Resource    ../resources/Testdata.robot

*** Keywords ***
Login with valid credentials
    [Documentation]    Log in with valid username and password
    [Arguments]    ${username}    ${password}
    Open Browser    ${BASE_URL}    chrome
    Maximize Browser Window
    Sleep    1s
    Click Element    ${USER_DROPDOWN}
    Sleep     2s    
    Wait Until Element Is Visible    ${ACCOUNT_MENU}    1s
    Click Element     ${ACCOUNT_MENU}
    Sleep  2s
    Wait Until Element Is Visible    css:div[data-testid="shadow-host"]
    Sleep   2s
    Input Text    ${EMAIL_FIELD}   ${username} 
    Input Text    ${PASSWORD_FIELD}  ${password}
    Click Element     ${LOGIN_BUTTON}
    Sleep    2s
