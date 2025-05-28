*** Settings ***
Library     SeleniumLibrary
Library    BuiltIn
*** Variables ***

${PAGE_TITLE_LOCATOR}                class=page-title
${PRODUCT_LIST_LOCATOR}              class=product-grid
${BOOK_SECTION_BUTTON_LOCATOR}       css=ul.top-menu > li:first-child
${FIRST_PRODUCT_LOCATOR}             css=div.product-grid > div:nth-child(1) a
${PRODUCT_OVERVIEW_LOCATOR}          class=product-essential
${ADD_TO_CART_BUTTON_LOCATOR}          css=[id^="add-to-cart-button"]
${CART_QUANTITY_LOCATOR}                class=cart-qty
*** Keywords ***
user selects "Books" section
    Click Element    ${BOOK_SECTION_BUTTON_LOCATOR}
    Wait Until Page Contains Element    ${PAGE_TITLE_LOCATOR}
    ${PAGE_TITLE_VALUE}=    Get Text    ${PAGE_TITLE_LOCATOR}
    Should Contain    ${PAGE_TITLE_VALUE}    Books
product list should be visible
    Element Should Be Visible    ${PRODUCT_LIST_LOCATOR}
user selects the first product from the list
    Click Element    ${FIRST_PRODUCT_LOCATOR}
check if we are in a product page
    Element Should Be Visible    ${PRODUCT_OVERVIEW_LOCATOR}
user adds the product to the cart
    Click Element    ${ADD_TO_CART_BUTTON_LOCATOR}









