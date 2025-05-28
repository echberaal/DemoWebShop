*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${NAVBAR_LOCATOR}                       class=header-links
${REGISTER_NAVBAR_BUTTON_LOCATOR}       class=ico-register
${LOGIN_NAVBAR_BUTTON_LOCATOR}         class=ico-login
${LOGOUT_NAVBAR_BUTTON_LOCATOR}          class=ico-logout
${ACCOUNT_NAVBAR_LOCATOR}                   class=account

*** Keywords ***
navbar should be visible
    Element Should Be Visible    ${NAVBAR_LOCATOR}
user clicks register
    Click Element    ${REGISTER_NAVBAR_BUTTON_LOCATOR}
user clicks login
    Click Element    ${LOGIN_NAVBAR_BUTTON_LOCATOR}
user clicks logout
    Click Element    ${LOGOUT_NAVBAR_BUTTON_LOCATOR}

user account should be visible in navbar
    Wait Until Page Contains Element    ${ACCOUNT_NAVBAR_LOCATOR}
    ${ACCOUNT_NAVBAR_VALUE}=    Get Text    ${ACCOUNT_NAVBAR_LOCATOR}
    Should Be Equal As Strings    ${ACCOUNT_NAVBAR_VALUE}    ${email}


