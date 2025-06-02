*** Settings ***
Documentation   Cest une description du test page en general
Resource    ../Resources/Common.robot
Resource    ../Resources/App.robot
Suite Setup    Begin Web Test
Suite Teardown   End Web Test

*** Variables ***
${Browser}      chrome
${URL}      https://demowebshop.tricentis.com/
${email}  john.doe109@e3xample.com
*** Test Cases ***
User registers logs out then logs in
    [Tags]    register      logout      login
    Given user is on the registration page
    When user registers with valid data
    And user logs out
    Then user logs in with valid data
    And user logs out
User logs in adds from cart
    [Tags]    smoke
    Given user logs in with valid data
    And logged user adds item "Books" to cart
##    Then cart should contain "Laptop"
##     And user removes item "Laptop" from cart
##     Then cart should be empty