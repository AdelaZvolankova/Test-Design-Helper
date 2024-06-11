*** Settings ***
Library        OperatingSystem
Library        Collections
Library        SeleniumLibrary
Library        String
Library        RequestsLibrary
Library        Browser


*** Keywords ***

I switch to English
    [Documentation]
    Wait Until Page Contains Element    ${SwitchToEnglish}
    Click Element                       ${SwitchToEnglish}

I open test design tool tab
    [Documentation]
    [Arguments]         ${TabName}
    Wait Until Page Contains Element        ${TabName}
    Click Link                              ${TabName}

I open contact info page
    [Documentation]
    Wait Until Element is visible           ${ContactUsButton}
    Click Element                           ${ContactUsButton}

I go to more information page
    [Documentation]
    Wait Until Page Contains Element    ${ChciVedetVic}
    Click Element    ${ChciVedetVic}
    Wait Until Location Is              ${MoreInfoUrl}

*** Variables ***

${SwitchToEnglish}                  //a[contains(text(),'EN')]
${SwitchToCzech}                    //a[contains(text(),'CS')]
${ContactUsButton}                  //div[contains(text(),'Kontaktujte nás')]
${OrthogonalCoveringArraysTab}      //a[contains(text(),'Orthogonal & Covering Arrays')]
${PairwiseTab}                      //a[contains(text(),'Pairwise')]
${DecisionTableTab}                 //a[contains(text(),'Decision Table')]
${OtherTechniquesTab}               //a[contains(text(),'Další techniky')]
${ChciVedetVic}                     //div[contains(text(),'CHCI VĚDĚT VÍC')]
${MoreInfoUrl}                      https://testdesign.tesena.com/#guide-index




