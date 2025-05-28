*** Settings ***
Documentation   Common Keywords
Library         SeleniumLibrary
Resource    ./PageObjects/Navbar.robot
Resource    ./Common.robot


Resource    ./PageObjects/Register.robot
Resource    ./PageObjects/Login.robot
Resource    ./PageObjects/Product.robot


Test Template   The User Enters Register Credentials
*** Keywords ***
## Register

user is on the registration page
    Given navbar should be visible
    When user clicks register
    Then check if we are in the registration page
user registers with valid data
    Given user fills the registration form
    When user submits the registration form
    Then a success message appears

## Logout After Register
user logout after register
    Given navbar should be visible
    When user clicks logout
    Then check if we are in home page

## Login
user is on the login page
    Given navbar should be visible
    When user clicks login
    Then check if we are in the login page
user logs in with valid data
    Given user is on the login page
    When user fills the login form
    And user submits the login form
    Then user account should be visible in navbar


## Cart Management




The homepage should be displayed
    Complete Page Load

The user is on the registration page
    Check Navbar Visible
    From Navbar To Registation
    Check If we are in the registration page

The User Enters Register Credentials
    [Arguments]     ${gender}    ${firstName}    ${lastName}    ${email}    ${password}    ${confirmPassword}
    Fill Registration Form      ${gender}    ${firstName}    ${lastName}    ${email}    ${password}    ${confirmPassword}

Submiting Form
    Submit Registration Form

A success message should be displayed
    Sucess Page Dispayed

The user is on the login page
    Check Navbar Visible
    From Navbar To Login
    Check If we are in the login page

The user enters a valid username and password
    [Arguments]     ${email}    ${password}
    Fill Email      ${email}
    Fill Password   ${password}

Clicks the login button
    Logining

The user should be redirected to the homepage
    [Arguments]     ${email}
    Complete Page Load
    Account Should be Visible in Navbar     ${email}

User is in a section
    User Clicks on books

User clicks on the first product
    Clicking on the first product




