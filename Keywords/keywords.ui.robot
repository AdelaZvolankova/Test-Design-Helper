*** Settings ***
Resource         ../keywords/variables.robot
Library        SeleniumLibrary

*** Keywords ***

I open Browser
    [Documentation]
    SeleniumLibrary.Open Browser    ${root_url}    browser=chrome
    Maximize Browser Window

I navigate to homepage
    [Documentation]
    SeleniumLibrary.Go To               ${root_url}
    Wait Until Page Contains Element    ${Tesena_logo}

I see header
    [Documentation]
    Wait until page contains element       ${header}

I see Tesena logo
    [Documentation]
    Wait until page contains element       ${Tesena_logo}

I see footer
    [Documentation]
    Wait until page contains element       ${footer}

I see social media links
    [Documentation]
    Wait until page contains element       ${FBlink}
    Wait until page contains element       ${INSTAlink}
    Wait until page contains element       ${YTlink}
    Wait until page contains element       ${LinkedINlink}

I verify headline is present
    [Documentation]
    [Arguments]     ${HeadlineLevel}        ${ExpectedHeadline}
    Wait until page contains element        ${HeadlineLevel}
    Element Should Contain    ${HeadlineLevel}       ${ExpectedHeadline}

I open contact info page
    [Documentation]
    Wait Until Element is visible           ${ContactUsButton}
    Click Element                           ${ContactUsButton}

I verify contact form is present
    [Documentation]
    Wait Until Page Contains Element        ${ContactForm}
    Capture Page Screenshot

I open test design tool tab
    [Documentation]
    [Arguments]         ${TabName}
    Wait Until Page Contains Element        ${TabName}
    Click Link                              ${TabName}

I Expand Other Techniques
    [Documentation]
    [Arguments]       ${TechniqueName}      ${element1}      ${element2}
    Wait Until Page Contains Element        ${TechniqueName}
    Scroll Element Into View                ${TechniqueName}
    Click Button                            ${TechniqueName}
    Sleep                                   1s
    Scroll Element Into View                ${element1}
    Wait Until Element Is Visible           ${element1}
    Sleep                                   1s
    Scroll Element Into View                ${element2}
    Wait Until Element Is Visible           ${element2}
    Capture Page Screenshot
    Sleep                                   1s
    Scroll Element Into View                ${ClassificationTree}
    Click Button                            ${TechniqueName}

I Expand Classification Tree
    [Documentation]
    I Expand Other Techniques       ${ClassificationTree}        ${Testona}     ${DrawIO1}

I Expand State Transition
    [Documentation]
    I Expand Other Techniques       ${StateTransition}        ${Creatly}     ${DrawIO2}

I Expand Boundry Value Analysis
    [Documentation]
    I Expand Other Techniques       ${BVA}        ${BVAExplained}     ${BVAExample}

I Expand Equivalence Partitioning
    [Documentation]
    I Expand Other Techniques       ${EVP}        ${EVPExplained}     ${EVPExample}

I switch to English
    [Documentation]
    Wait Until Page Contains Element    ${SwitchToEnglish}
    Click Element                       ${SwitchToEnglish}

I verify website is in English
    [Documentation]
    Page Should Contain Element        ${WelcomeInEnglish}
    Capture Page Screenshot

I fill in data field
    [Documentation]
    [Arguments]          ${field}       ${data}
    Wait Until Page Contains Element    ${field}
    Click Element                       ${field}
    Input Text                          ${field}    ${data}

I fill in contact form with correct values
    [Documentation]
    I fill in data field        ${NameInput}            ${TestingName}
    I fill in data field        ${EmailInput}           ${TestEmail}
    I fill in data field        ${MessageInput}         ${TestMessage}

I fill in contact form with invalid email
    [Documentation]
    I fill in data field        ${NameInput}            ${TestingName}
    I fill in data field        ${EmailInput}           ${InvalidEmail}
    I fill in data field        ${MessageInput}         ${TestMessage}

I send message to Tesena
    [Documentation]
    Wait Until Element Is Visible       ${SubmitMessageButton}
    Scroll Element Into View            ${SubmitMessageButton}
    Execute JavaScript                  window.scrollTo(0,document.body.scrollHeight)
    Click Element                       ${SubmitMessageButton}

Verify error message is present
    [Documentation]
#    Wait Until Element Is Visible       ${EmailErrorMessage}
    Capture Page Screenshot

I go to more information page
    [Documentation]
    Wait Until Page Contains Element    ${ChciVedetVic}
    Click Element    ${ChciVedetVic}

Verify I see more information
    [Documentation]
     Wait Until Page Contains Element   ${LinkToTrainings}
     Scroll Element Into View           ${LinkToTrainings}
     Capture Page Screenshot