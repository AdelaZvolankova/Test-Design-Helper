*** Settings ***
Library        OperatingSystem
Library        Collections
Library        SeleniumLibrary
Library        String
Library        RequestsLibrary
Library        Browser
Resource       ./PO_ExternalSites.resource


*** Keywords ***

I verify headline is present
    [Documentation]
    [Arguments]     ${HeadlineLevel}        ${ExpectedHeadline}
    Wait until page contains element        ${HeadlineLevel}
    Element Should Contain    ${HeadlineLevel}       ${ExpectedHeadline}

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

I verify more info is expandable
    [Documentation]
    Wait Until Page Contains Element    ${ShowMoreInfo}
    Click Element                       ${ShowMoreInfo}
    Capture Page Screenshot


*** Variables ***

${SubpageHeadlineLevel}             //h2
${ShowMoreInfo}                     //span[@class='show-more-btn']
${ShowLessInfo}                     //span[contains(text(),'Méně')]
${ClassificationTree}               (//button[@id="classificationTree"])[1]
${StateTransition}                  (//button[@id="classificationTree"])[2]
${BVA}                              (//button[@id="classificationTree"])[3]
${EVP}                              (//button[@id="classificationTree"])[4]
${Testona}                          //a[@href='${TestonaUrl}']
${DrawIO1}                          (//a[@href='${DrawIOUrl}'])[1]
${DrawIO2}                          (//a[@href='${DrawIOUrl}'])[2]
${Creatly}                          //a[@href='${CreatlyUrl}']
${BVAExplained}                     //p[contains(text(),'Boundary value analysis je testovací technika')]
${BVAExample}                       //p[contains(text(),'Tedy hraniční hodnoty dle výše uvedeného budou')]
${EVPExplained}                     //p[contains(text(),'Equivalence partitioning je testovací technika')]
${EVPExample}                       //p[contains(text(),'Pro testování data')]
${Download}                         //a[contains(text(),'Stáhnout')]