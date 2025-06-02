*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${NAVBAR_LOCATOR}                       class=header-links
${SECTION_BAR_LOCATOR}                  class=header-menu
${REGISTER_NAVBAR_BUTTON_LOCATOR}       class=ico-register
${LOGIN_NAVBAR_BUTTON_LOCATOR}         class=ico-login
${SHOPPING_CART_NAVBAR_BUTTON_LOCATOR}       class=ico-cart
${LOGOUT_NAVBAR_BUTTON_LOCATOR}          class=ico-logout
${ACCOUNT_NAVBAR_LOCATOR}                   class=account

*** Keywords ***
navbar should be visible
    Element Should Be Visible    ${NAVBAR_LOCATOR}
section bar should be visible
    Element Should Be Visible    ${SECTION_BAR_LOCATOR}
user clicks register
    Click Element    ${REGISTER_NAVBAR_BUTTON_LOCATOR}
user clicks login
    Click Element    ${LOGIN_NAVBAR_BUTTON_LOCATOR}
user clicks logout
    Click Element    ${LOGOUT_NAVBAR_BUTTON_LOCATOR}
users clicks shopping cart
    Click Element    ${SHOPPING_CART_NAVBAR_BUTTON_LOCATOR}
user account should be visible in navbar
    Wait Until Page Contains Element    ${ACCOUNT_NAVBAR_LOCATOR}
    ${ACCOUNT_NAVBAR_VALUE}=    Get Text    ${ACCOUNT_NAVBAR_LOCATOR}
    Should Be Equal As Strings    ${ACCOUNT_NAVBAR_VALUE}    ${email}


