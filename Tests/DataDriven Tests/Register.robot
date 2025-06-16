*** Settings ***
Documentation   Cest une description du test page en general
Resource    ../../Resources/Common.robot
Resource    ../../Resources/PageObjects/Register.robot
Test Setup    Begin Web Test
Suite Teardown   End Web Test
Library     SeleniumLibrary
Library     DataDriver
Test Template       user registers with data
*** Variables ***
${Browser}      chrome
${URL}      https://demowebshop.tricentis.com/register
*** Test Cases ***
User registers
    [Documentation]     Register
    [Tags]      register  user
    Maximize Browser Window

*** Keywords ***
user registers with data
    [Arguments]     ${gender}    ${firstName}    ${lastName}    ${email}    ${password}    ${confirmPassword}
    Given Fill Registration Form  ${gender}    ${firstName}    ${lastName}    ${email}    ${password}    ${confirmPassword}
    When user submits the registration form
    And generated error messages


