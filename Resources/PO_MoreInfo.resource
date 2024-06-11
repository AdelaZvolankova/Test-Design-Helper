*** Settings ***
Library        OperatingSystem
Library        Collections
Library        SeleniumLibrary
Library        String
Library        RequestsLibrary
Library        Browser
Resource       ./variables.resource


*** Keywords ***

 Verify I see more information and link to trainings
    [Documentation]
    Wait Until Page Contains Element   ${LinkToTrainings}
    Scroll Element Into View           ${LinkToTrainings}
    Capture Page Screenshot


*** Variables ***

${LinkToTrainings}                  //a[@href="https://www.tesena.com/test-design-techniky"]
