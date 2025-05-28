*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BOOK_SECTION_BUTTON_LOCATOR}       css=ul.top-menu > li:first-child
${FIRST_PRODUCT_LOCATOR}             css=div.product-grid > div:nth-child(1) a
*** Keywords ***
User Clicks on books
    Click Element    ${BOOK_SECTION_BUTTON_LOCATOR}
Clicking on the first product
    Click Element    ${FIRST_PRODUCT_LOCATOR}




