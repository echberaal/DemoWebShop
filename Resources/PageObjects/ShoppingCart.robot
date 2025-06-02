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










