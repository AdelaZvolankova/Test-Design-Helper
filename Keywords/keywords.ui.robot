*** Settings ***
Resource         ../keywords/variables.robot
Resource         ../keywords/settings.robot
Variables        test_data.py

*** Keywords ***
I open Browser
    SeleniumLibrary.Open Browser    ${root_url}    browser=chrome

I navigate to homepage
    SeleniumLibrary.Go To           ${root_url}
    Maximize Browser Window

I see header
    Wait until page contains element       ${header}

I see Tesena logo
    Wait until page contains element       ${Tesena_logo}

I see footer
    Wait until page contains element       ${footer}

I see social media links
    Wait until page contains element       ${FBlink}
    Wait until page contains element       ${INSTAlink}
    Wait until page contains element       ${YTlink}
    Wait until page contains element       ${LinkedINlink}

I verify headline is present
    [Arguments]     ${HeadlineLevel}        ${ExpectedHeadline}
    Wait until page contains element        ${HeadlineLevel}
    Element Should Contain    ${HeadlineLevel}       ${ExpectedHeadline}

I open contact info page
    Wait Until Element is visible           ${ContactUsButton}
    Click Element                           ${ContactUsButton}

I verify contact form is present
    Wait Until Page Contains Element        ${ContactForm}
    Capture Page Screenshot

I open test design tool tab
    [Arguments]         ${TabName}
    Wait Until Page Contains Element        ${TabName}
    Click Link                              ${TabName}

I Expand Other Techniques
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
    I Expand Other Techniques       ${ClassificationTree}        ${Testona}     ${DrawIO1}

I Expand State Transition
    I Expand Other Techniques       ${StateTransition}        ${Creatly}     ${DrawIO2}

I Expand Boundry Value Analysis
    I Expand Other Techniques       ${BVA}        ${BVAExplained}     ${BVAExample}

I Expand Equivalence Partitioning
    I Expand Other Techniques       ${EVP}        ${EVPExplained}     ${EVPExample}

I switch to English
    Wait Until Page Contains Element    ${SwitchToEnglish}
    Click Element                       ${SwitchToEnglish}

I verify website is in English      
    Page Should Contain Element        ${WelcomeInEnglish}
    Capture Page Screenshot


I fill in data field
    [Arguments]          ${field}       ${data}
    Wait Until Page Contains Element    ${field}
    Click Element                       ${field}
    Input Text                          ${field}    ${data}

I fill in contact form with correct values
    I fill in data field        ${NameInput}            ${TestingName}
    I fill in data field        ${EmailInput}           ${TestEmail}
    I fill in data field        ${MessageInput}         ${TestMessage}


I fill in contact form with invalid email
    I fill in data field        ${NameInput}            ${TestingName}
    I fill in data field        ${EmailInput}           ${InvalidEmail}
    I fill in data field        ${MessageInput}         ${TestMessage}


I send message to Tesena
    Wait Until Element Is Visible       ${SubmitMessageButton}
    Scroll Element Into View            ${SubmitMessageButton}
    Execute JavaScript                  window.scrollTo(0,document.body.scrollHeight)
    Click Element                       ${SubmitMessageButton}

Verify error message is present
#    Wait Until Element Is Visible       ${EmailErrorMessage}
    Capture Page Screenshot