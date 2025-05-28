*** Settings ***
Documentation   Cest une description du test page en general
Resource    ../Resources/Common.robot
Resource    ../Resources/App.robot
Suite Setup    Begin Web Test
Suite Teardown   End Web Test

*** Variables ***
${Browser}      chrome
${URL}      https://demowebshop.tricentis.com/
${email}  john.doe143@e3xample.com
*** Test Cases ***
User registers, logs in, adds and removes item from cart
    [Tags]    smoke
    Given user is on the registration page
    When user registers with valid data
    And user logout after register
    And user logs in with valid data
##    And user adds item "Laptop" to cart
##    Then cart should contain "Laptop"
##     And user removes item "Laptop" from cart
##     Then cart should be empty
