*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${PAGE_TITLE_LOCATOR}     class=page-title
${EMAIL_INPUT_LOCATOR}       id=Email
${PASSWORD_INPUT_LOCATOR}       id=Password
${LOGIN_BUTTON_LOCATOR}       xpath=/html/body/div[4]/div[1]/div[4]/div[2]/div/div[2]/div[1]/div[2]/div[2]/form/div[5]/input
*** Keywords ***
check If we are in the login page
    Wait Until Page Contains Element    ${PAGE_TITLE_LOCATOR}
    ${PAGE_TITLE_VALUE}=    Get Text    ${PAGE_TITLE_LOCATOR}
    Should Contain    ${PAGE_TITLE_VALUE}    Sign In
    Element Should Be Visible    ${EMAIL_INPUT_LOCATOR}
    Element Should Be Visible    ${PASSWORD_INPUT_LOCATOR}
user fills the login form
    Fill Log In Form    ${email}    Password123
user submits the login form
    Click Element    ${LOGIN_BUTTON_LOCATOR}
Fill Log In Form
    [Arguments]     ${email}    ${password}
    Fill Email    ${email}
    Fill Password    ${password}

Fill Email
    [Arguments]    ${email}
    Input Text    ${EMAIL_INPUT_LOCATOR}    ${email}
Fill Password
    [Arguments]    ${password}
    Input Password    ${PASSWORD_INPUT_LOCATOR}    ${password}






