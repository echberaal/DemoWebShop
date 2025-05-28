*** Settings ***
Documentation   Common Keywords
Library         SeleniumLibrary


*** Variables ***
${TOPIC_HEADER_LOCATOR}     class=topic-html-content-header

*** Keywords ***
Begin Web Test
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    check if we are in home page
check if we are in home page
    Wait Until Page Contains Element    ${TOPIC_HEADER_LOCATOR}
    ${TOPIC_HEADER_VALUE}=    Get Text    ${TOPIC_HEADER_LOCATOR}
    Should Be Equal As Strings    ${TOPIC_HEADER_VALUE}    Welcome to our store
End Web Test
    Sleep   1s
    Close Browser
