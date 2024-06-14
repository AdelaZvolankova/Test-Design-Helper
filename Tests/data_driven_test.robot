*** Settings ***

Resource        ../Resources/PO_ContactForm.resource
Resource        ../Resources/PO_ExternalSites.resource
Resource        ../Resources/PO_TechniquesSubpages.resource
Resource        ../Resources/PO_HeaderObjects.resource
Resource        ../Resources/PO_MoreInfo.resource
Resource        ../Configs/config.resource
#Library    DataDriver    File=../Resources/ContactFormData.txt    dialect=unix_dialect



Test Setup        Start Test case
Test Teardown     Finish Test case
Test Template     Fill in contact form

Test Timeout      120s


*** Variables ***

${environment}  prod


*** Keywords ***

Fill in contact form
    [Arguments]    ${Name}    ${Email}    ${Message}
    I fill in data field        ${NameInput}            ${Name}
    I fill in data field        ${EmailInput}           ${Email}
    I fill in data field        ${MessageInput}         ${Message}
    I send message to Tesena
    Capture Page Screenshot


Start Test case
    [Documentation]
    I open Browser
    I navigate to homepage
    I open contact info page
    

Finish Test case
    [Documentation]
    Close All Browsers


*** Test Cases ***                                 ${Name}          ${Email}               ${Message}
Contact form validation happy path                  John Doe        john@example.com       This is a robot test message.
Contact form validation invalid email               John Doe        invalid@email          Hello World
Contact form validation empty message               John Doe        john@example.com       ${EMPTY}
Contact form validation empty email                 John Doe        ${EMPTY}               This email shouldnt be sent

