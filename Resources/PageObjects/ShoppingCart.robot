*** Settings ***
Library     SeleniumLibrary
Library    BuiltIn
*** Variables ***
${TABLE_ROWS_LOCATOR}       css=table.cart > tbody > tr
${CHECKBOX_REMOVE_LOCATOR}  css=table.cart > tbody > tr:first-child input[type="checkbox"]
${UPDATE_CART_BUTOON_LOCATOR}      name=updatecart

*** Keywords ***
Verify Cart Row Count
    [Arguments]    ${expected_state}=not empty
    ${elements}=    Get WebElements    ${TABLE_ROWS_LOCATOR}
    ${row_count}=    Get Length    ${elements}
    Run Keyword If    '${expected_state}' == 'empty'    Should Be Equal As Integers    ${row_count}    0    Cart is not empty !
    ...    ELSE    Should Be True    ${row_count} > 0    Cart is empty !

user removes item "Book" from cart
    Element Should Be Visible    ${CHECKBOX_REMOVE_LOCATOR}
    Click Element    ${CHECKBOX_REMOVE_LOCATOR}
    Click Element    ${UPDATE_CART_BUTOON_LOCATOR}












