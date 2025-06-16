*** Settings ***
Documentation   Cest une description du test page en general
Resource    ../Resources/Common.robot
Resource    ../Resources/App.robot
Suite Setup    Begin Web Test
Suite Teardown   End Web Test

*** Variables ***
${Browser}      chrome
${URL}      https://demowebshop.tricentis.com/
${email}  john.doe2003@e2xample.com
*** Test Cases ***
User registers logs out then logs in
    [Tags]    register      logout      login
    Given user is on the registration page
    When user registers with valid data
    And user logs out
    Then user logs in with valid data
    And user logs out
User logs in adds from cart then removes
    [Tags]    smoke
    Given user logs in with valid data
    And logged user adds item "Book" to cart
    Then cart should contain "Book"
    And user removes item "Book" from cart
    Then Verify Cart Row Count    empty
