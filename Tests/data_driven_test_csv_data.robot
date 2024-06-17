*** Settings ***

Resource   ../Resources/PO_ContactForm.resource
Resource   ../Resources/PO_ExternalSites.resource
Resource   ../Resources/PO_TechniquesSubpages.resource
Resource   ../Resources/PO_HeaderObjects.resource
Resource   ../Resources/PO_MoreInfo.resource
Resource   ../Configs/config.resource
Library     DataDriver     File=${CURDIR}/../TestData/ContactFormData.csv
...         reader_class=csv_reader
...         encoding=utf_8
...         delimiter=,
...         lineterminator=\\n


Test Setup        Start Test case
Test Teardown     Finish Test case
Test Template     Fill in contact form

Test Timeout      120s


*** Variables ***

${environment}  prod


*** Keywords ***

Fill in contact form
    [Documentation]       Fills in contact form with name, email and message
    [Arguments]    ${Name}    ${Email}    ${Message}
    I fill in data field        ${NameInput}            ${Name}
    I fill in data field        ${EmailInput}           ${Email}
    I fill in data field        ${MessageInput}         ${Message}
    I send message to Tesena
    Capture Page Screenshot


Start Test case
    [Documentation]     Navigates user to homepage and then to contact form page
    common.I open Browser
    I navigate to homepage
    I open contact info page
    

Finish Test case
    [Documentation]     Closes all browsers
    Close All Browsers


*** Test Cases ***                                       ${Name}        ${Email}        ${Message}
Data driven test ${Name} and ${Email} and ${Message}     default        default         default

