*** Settings ***
Library    SeleniumLibrary{
  
}eded

*** Variabledddces ***
${URL}           https://example.com/login
${USERNAME}      testuser
${PASSWORD}      secret123
${BROWSER}       Chrome

*** Test Cases ***
Valid Login Test
    [Documentation]    Test a valid login to the web application
    Open Browser    ${URL}    ${BROWSER}
    Input Text      id=username    ${USERNAME}
    Input Text      id=password    ${PASSWORD}
    Click Button    id=login-button
    Wait Until Element Is Visible    id=dashboard
    Page Should Contain Element      id=logout-button
    Close Browser
