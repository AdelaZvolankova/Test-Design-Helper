*** Settings ***
Resource       ./PO_ExternalSites.resource
Resource       ./common.robot


*** Keywords ***

I verify headline is present
    [Documentation]    Verifies the headline is present on the page.
    [Arguments]     ${HeadlineLevel}        ${ExpectedHeadline}
    Wait until page contains element        ${HeadlineLevel}
    Element Should Contain    ${HeadlineLevel}       ${ExpectedHeadline}

I Expand Other Techniques
    [Documentation]    Expands a single testing technique displaying additional information.
    [Arguments]       ${TechniqueName}      ${element1}      ${element2}
    Wait scroll click element               ${TechniqueName}
    Scroll Element Into View                ${element1}
    Wait Until Page Contains Element        ${element1}
    Scroll Element Into View                ${element2}
    Wait Until Page Contains Element        ${element2}
    Capture Page Screenshot
    Scroll Element Into View                ${ClassificationTree}
    Click Button                            ${TechniqueName}

I Expand Classification Tree
    [Documentation]    Expands the classification tree.
    I Expand Other Techniques       ${ClassificationTree}        ${Testona}     ${DrawIO1}

I Expand State Transition
    [Documentation]    Expands the state transition.
    I Expand Other Techniques       ${StateTransition}        ${Creatly}     ${DrawIO2}

I Expand Boundry Value Analysis
    [Documentation]    Expands the Boundry Value Analysis.
    I Expand Other Techniques       ${BVA}        ${BVAExplained}     ${BVAExample}

I Expand Equivalence Partitioning
    [Documentation]    Expands the Equivalence Partitioning.
    I Expand Other Techniques       ${EVP}        ${EVPExplained}     ${EVPExample}

I verify more info is expandable
    [Documentation]    Expands the more info section.
    Wait scroll click element       ${ShowMoreInfo}
    Capture Page Screenshot


*** Variables ***

${SubpageHeadlineLevel}             css:h2
${ShowMoreInfo}                     css:.show-more-btn
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
