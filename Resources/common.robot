*** Settings ***
Library        OperatingSystem
Library        Collections
Library        SeleniumLibrary
Library        String


*** Keywords ***

I open Browser
    [Documentation]     Opens a new browser window using the Chrome browser and navigates to the given URL
    SeleniumLibrary.Open Browser    about:blank    browser=chrome
    Maximize Browser Window

Wait scroll click element
    [Documentation]     This keyword is used to replace 3 keywords from SeleniumLibrary
    [Arguments]     ${locator}
    Wait Until Page Contains Element        ${locator}
    Scroll Element Into View                ${locator}
    Click Element                           ${locator}