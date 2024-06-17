*** Settings ***
Resource       ./PO_Homepage.resource
Resource       ./PO_TechniquesSubpages.resource
Resource       ./common.robot


*** Keywords ***

I switch to English
    [Documentation]    Switches the website to the English language by clicking the 'EN' link.
    Wait scroll click element           ${SwitchToEnglish}

I switch to Czech
    [Documentation]    Switches the website to the Czech language by clicking the 'CS' link.
    Wait scroll click element           ${SwitchToCzech}
    Wait Until Element Is Visible       ${ChciVedetVic}

I open test design tool tab
    [Documentation]    Opens the specified test design tool tab by clicking the respective tab.
    [Arguments]         ${TabName}
    Wait scroll click element            ${TabName}

I open contact info page
    [Documentation]    Opens the contact information page by clicking the 'Kontaktujte nás'
    Wait scroll click element            ${ContactUsButton}

I go to more information page
    [Documentation]    Opens the "More Information" page by clicking the "CHCI VĚDĚT VÍC" button.
    Wait scroll click element           ${ChciVedetVic}
    Wait Until Location Is              ${MoreInfoUrl}

I go to introduction
    [Documentation]     Opens the introduction page and waits for the "CHCI VĚDĚT VÍC" button to be visible.
    Wait scroll click element        ${Uvod}
    Wait Until Element Is Visible    ${ChciVedetVic}

I perform page transitions
    [Documentation]     Clicks trough the tabs in Header panel.
    I navigate to homepage
    I open test design tool tab         ${OrthogonalCoveringArraysTab}
    I verify headline is present        ${SubpageHeadlineLevel}         ${OrthogonalCoveringArrays}
    I open test design tool tab         ${PairwiseTab}
    I verify headline is present        ${SubpageHeadlineLevel}         ${Pairwise}
    I open test design tool tab         ${DecisionTableTab}
    I verify headline is present        ${SubpageHeadlineLevel}         ${DecisionTable}
    I open test design tool tab         ${OtherTechniquesTab}
    I verify headline is present        ${SubpageHeadlineLevel}         ${DalsiTechniky}
    I go to introduction


*** Variables ***

${SwitchToEnglish}                  css:a[href="/en"]
${SwitchToCzech}                    css:a[href="/"]
${ContactUsButton}                  CSS:.btn-radius-border
${Uvod}                             css:a[href="/"]
${OrthogonalCoveringArraysTab}      css:a[href="/orthogonal_arrays"]
${PairwiseTab}                      css:a[href="/pairwise"]
${DecisionTableTab}                 css:a[href="/decision_table"]
${OtherTechniquesTab}               css:a[href="/other"]
${ChciVedetVic}                     //div[contains(text(),'CHCI VĚDĚT VÍC')]
${MoreInfoUrl}                      https://testdesign.tesena.com/#guide-index
