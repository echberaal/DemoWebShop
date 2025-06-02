*** Settings ***
Documentation   Common Keywords
Resource    ./Common.robot
Resource    ./PageObjects/Navbar.robot
Resource    ./PageObjects/Register.robot
Resource    ./PageObjects/Login.robot
Resource    ./PageObjects/Product.robot

*** Keywords ***
## Register

user is on the registration page
    [Tags]    registrationPage
    Given navbar should be visible
    When user clicks register
    Then check if we are in the registration page
user registers with valid data
    [Tags]    register
    Given user fills the registration form
    When user submits the registration form
    Then a success message appears

## Logout After Register
user logs out
    [Tags]    logout
    Given navbar should be visible
    When user clicks logout

## Login
user is on the login page
    [Tags]    loginPage
    Given navbar should be visible
    When user clicks login
    Then check if we are in the login page
user logs in with valid data
    [Tags]    login
    Given user is on the login page
    When user fills the login form
    And user submits the login form
    Then user account should be visible in navbar

## Cart Management
logged user adds item "Books" to cart
    Given section bar should be visible
    When user selects "Books" section
    Then product list should be visible
    When user selects the first product from the list
    And check if we are in a product page
    Then user adds the product to the cart