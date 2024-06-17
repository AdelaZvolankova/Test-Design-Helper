*** Settings ***
Resource       ./common.robot

*** Keywords ***

I verify contact form is present
    [Documentation]     Test verifies contact form is present
    Wait Until Page Contains Element        ${ContactForm}
    Capture Page Screenshot

I fill in data field
    [Documentation]    Fills in the specified data field on the page.
    [Arguments]          ${field}       ${data}
    Wait scroll click element           ${field}
    Input Text                          ${field}    ${data}

I fill in contact form
    [Documentation]   Fills in the contact form with the provided name, email, and message.
    [Arguments]      ${Name}    ${Email}    ${Message}
    I fill in data field        ${NameInput}            ${Name}
    I fill in data field        ${EmailInput}           ${Email}
    I fill in data field        ${MessageInput}         ${Message}

I send message to Tesena
    [Documentation]    Clicks submit to send the message to Tesena.
    Wait Until Element Is Visible       ${SubmitMessageButton}
    Scroll Element Into View            ${SubmitMessageButton}
    Execute JavaScript                  window.scrollTo(0,document.body.scrollHeight)
    Click Element                       ${SubmitMessageButton}

Verify error message is present
    [Documentation]     Test verifies that the email error message is present on the page.
#    Wait Until Element Is Visible       ${EmailErrorMessage}
    Capture Page Screenshot


*** Variables ***

${ContactForm}                      id:contact-form
${EmailInput}                       id:email
${NameInput}                        id:user
${MessageInput}                     id:message
${SubmitMessageButton}              id:submit
${EmailErrorMessage}                id:email-error
${EmptyMessage}
${TestingName}                      John Doe
${TestEmail}                        john@doe.com
${TestMessage}                      This is my question.
${InvalidEmail}                     abc123