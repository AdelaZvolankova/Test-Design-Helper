*** Settings ***
Library        OperatingSystem
Library        Collections
Library        SeleniumLibrary
Library        String
Library        RequestsLibrary
Library        Browser
Resource       ./variables.resource


*** Keywords ***

I open Browser
    [Documentation]     Opens a new browser window using the Chrome browser and navigates to the given URL
    SeleniumLibrary.Open Browser    ${root_url}[${environment}]    browser=chrome
    Maximize Browser Window

I navigate to homepage
    [Documentation]    Navigates to the homepage URL, Waits until the Tesena logo element is present on the page.
    SeleniumLibrary.Go To               ${root_url}[${environment}]
    Wait Until Page Contains Element    ${Tesena_logo}

I see header
    [Documentation]    Waits until the page contains the element identified by the ${header} locator. This keyword is used to ensure that the header element is present on the page before proceeding with further actions.
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

I check Tesena FB page
    [Documentation]
    Click Element                        ${FBlink}
    Wait Until Page Contains Element     ${Facebook}

I check Tesena INSTA page
    [Documentation]
    Click Element                        ${INSTAlink}
    Wait Until Page Contains Element     ${Instagram}
    
I check Tesena YT page
    [Documentation]
    Click Element                        ${YTlink}
    Wait Until Page Contains Element     ${YouTube}


I check Tesena LinkedIN page
    Click Element                        ${LinkedINlink}
    Wait Until Page Contains Element     ${LinkedIN}


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

I fill in contact form
    [Documentation]
    [Arguments]      ${Name}    ${Email}    ${Message}
    I fill in data field        ${NameInput}            ${Name}
    I fill in data field        ${EmailInput}           ${Email}
    I fill in data field        ${MessageInput}         ${Message}


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

Verify I see more information and link to trainings
    [Documentation]
     Wait Until Page Contains Element   ${LinkToTrainings}
     Scroll Element Into View           ${LinkToTrainings}
     Capture Page Screenshot


I verify social media link
    [Documentation]
    [Arguments]    ${SocialMediaLink}   ${SociaMediaUrl}    ${CloseButton}    ${SocialMediaElement}
    Wait Until Page Contains Element    ${SocialMediaLink}
    Scroll Element Into View            ${SocialMediaLink}
    Click Element                       ${SocialMediaLink}
    I close cookies question            ${CloseButton}
    Wait Until Location Is              ${SociaMediaUrl}
    Wait Until Page Contains Element    ${SocialMediaElement}

I close cookies question
    [Arguments]         ${CloseButton}
    Wait Until Page Contains Element    ${CloseButton}
    Scroll Element Into View            ${CloseButton}
    Click Element                       ${CloseButton}

I close FB registration
    Wait Until Page Contains Element    ${CloseFBRegistration}
    Click Element                       ${CloseFBRegistration}

I verify more info is expandable
    [Documentation]
    Wait Until Page Contains Element    ${ShowMoreInfo}
    Click Element                       ${ShowMoreInfo}
    Capture Page Screenshot


I navigate to external homepage
    [Documentation]
    [Arguments]        ${webUrl}
    SeleniumLibrary.Go To               ${webUrl}
    Wait Until Location Is              ${webUrl}


I accept cookies
    Wait Until Element Is Visible       ${AcceptCookies}
    Execute JavaScript                  window.scrollTo(0,document.body.scrollHeight)
    Click Link                          ${AcceptCookies}


I verify English Url is correct
    [Documentation]
    Wait Until Location Is              ${EnglishUrl}
