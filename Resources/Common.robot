*** Settings ***
Documentation   Common Keywords
Library         SeleniumLibrary


*** Variables ***
${TOPIC_HEADER_LOCATOR}              class=topic-html-content-header
${PAGE_TITLE_LOCATOR}                class=page-title
*** Keywords ***
Begin Web Test
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
End Web Test
    Sleep   1s
    Close Browser

verify page title
    [Arguments]     ${page_title}
    Wait Until Page Contains Element    ${PAGE_TITLE_LOCATOR}
    ${PAGE_TITLE_VALUE}=    Get Text    ${PAGE_TITLE_LOCATOR}
    Should Contain    ${PAGE_TITLE_VALUE}    ${page_title}
