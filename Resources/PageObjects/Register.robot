*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${PAGE_TITLE_LOCATOR}     class=page-title
${REGISTER_NAVBAR_BUTTON_LOCATOR}   class=ico-register
${LOGOUT_REGISTERED_USER_LOCATOR}   class=ico-logout
${GENDER_RADIO_LOCATOR_M}         id=gender-male
${GENDER_RADIO_LOCATOR_F}         id=gender-female
${FIRST_NAME_INPUT_LOCATOR}     id=FirstName
${LAST_NAME_INPUT_LOCATOR}      id=LastName
${EMAIL_INPUT_LOCATOR}          id=Email
${PASSWORD_INPUT_LOCATOR}       id=Password
${CONFIRM_PASSWORD_INPUT_LOCATOR}       id=ConfirmPassword
${REGISTER_BUTTON_LOCATOR}       id=register-button
${REGISTER_SUCCESS_MSG}       class=result
*** Keywords ***
check if we are in the registration page
    Wait Until Page Contains Element    ${PAGE_TITLE_LOCATOR}
    ${PAGE_TITLE_VALUE}=    Get Text    ${PAGE_TITLE_LOCATOR}
    Should Be Equal As Strings    ${PAGE_TITLE_VALUE}    Register

user fills the registration form
    Fill Registration Form    M    John  Doe    ${email}    Password123     Password123
user submits the registration form
    Click Element    ${REGISTER_BUTTON_LOCATOR}
a success message appears
    Wait Until Page Contains Element    ${REGISTER_SUCCESS_MSG}
    ${REGISTER_SUCCESS_VALUE}=    Get Text    ${REGISTER_SUCCESS_MSG}
    Should Be Equal As Strings    ${REGISTER_SUCCESS_VALUE}    Your registration completed

Fill Registration Form
    [Arguments]     ${gender}    ${firstName}    ${lastName}    ${email}    ${password}    ${confirmPassword}
    Fill Gender     ${gender}
    Fill FirstName  ${firstName}
    Fill LastName   ${lastName}
    Fill Email      ${email}
    Fill Password   ${password}
    Fill ConfirmPassword    ${confirmPassword}

Fill Gender
    [Arguments]    ${gender}
    IF    "${gender}" == "M"
        Click Element    ${GENDER_RADIO_LOCATOR_M}
    ELSE
         Click Element    ${GENDER_RADIO_LOCATOR_F}
    END
Fill FirstName
    [Arguments]    ${firstName}
    Input Text    ${FIRST_NAME_INPUT_LOCATOR}    ${firstName}
Fill LastName
    [Arguments]    ${lastName}
    Input Text    ${LAST_NAME_INPUT_LOCATOR}    ${lastName}
Fill Email
    [Arguments]    ${email}
    Input Text    ${EMAIL_INPUT_LOCATOR}    ${email}
Fill Password
    [Arguments]    ${password}
    Input Password    ${PASSWORD_INPUT_LOCATOR}    ${password}
Fill ConfirmPassword
    [Arguments]    ${confirmPassword}
    Input Password    ${CONFIRM_PASSWORD_INPUT_LOCATOR}     ${confirmPassword}




