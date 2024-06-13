*** Settings ***
Library        OperatingSystem
Library        Collections
Library        SeleniumLibrary
Library        String
Library        RequestsLibrary
Library        Browser


*** Keywords ***

Verify I see more information and link to trainings
    [Documentation]    Verifies that the "More Information" page is loaded and that the link to the trainings is visible.
    Wait Until Page Contains Element   ${LinkToTrainings}
    Scroll Element Into View           ${LinkToTrainings}
    Capture Page Screenshot


*** Variables ***

${LinkToTrainings}                  css:a strong
