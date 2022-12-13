*** Settings ***
Library    Selenium2Library
*** Variables ***

*** Test Cases ***
User must be signed in before checkout
    [Tags]    functional test
    Open Browser    https://www.amazon.com    chrome
    Maximize Browser Window
    Wait Until Page Contains    Today's Deals
    Page Should Contain    Today's Deals
    Input Text    css=#twotabsearchtextbox    smart watch
    # Press Keys    css=#twotabsearchtextbox    ENTER
    Click Element    css=#nav-search-submit-button
    Wait Until Page Contains     results for "smart watch"
    Page Should Contain     results for "smart watch"
    Click Element    css=[data-image-index='2']
    Wait Until Page Contains    Add to Cart
    Page Should Contain    Add to Cart
    Click Element    css=#add-to-cart-button
    Sleep    10s
    Wait Until Page Contains    Cart Subtotal:
    Page Should Contain    Cart Subtotal:
    Click Element    css=[value='Proceed to checkout']
    Wait Until Page Contains    Sign in
    Page Should Contain    Sign in
    Close Browser


*** Keywords ***