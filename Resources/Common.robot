*** Settings ***
Documentation   Common Keywords
Library         SeleniumLibrary


*** Variables ***
${TOPIC_HEADER_LOCATOR}     class=topic-html-content-header

*** Keywords ***
Begin Web Test
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
End Web Test
    Sleep   1s
    Close Browser
