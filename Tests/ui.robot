*** Settings ***
Resource         ../keywords/keywords.ui.robot
Resource         ../keywords/variables.robot
Resource         ../keywords/settings.robot


Test Setup        I open Browser
Test Teardown     Close All Browsers


*** Test Cases ***

TC_01 User can see Homepage
    [Tags]
    I navigate to homepage
    I see header
    I see Tesena logo
    I see footer
    I see social media links
    I verify headline is present        ${MainPageHeadlineLevel}        ${MainPageHeadline}


TC_02 User can see contact info
    [Tags]
    I navigate to homepage
    I open contact info page
    I verify headline is present        ${SubpageHeadlineLevel}         ${ContactHeadline}
    I verify contact form is present


TC_03 User can open Orthogonal Arrays tab
    [Tags]
    I navigate to homepage
    I open test design tool tab         ${OrthogonalCoveringArraysTab}
    I verify headline is present        ${SubpageHeadlineLevel}         ${OrthogonalCoveringArrays}


TC_04 User can open Pairwise Arrays tab
    [Tags]
    I navigate to homepage
    I open test design tool tab         ${PairwiseTab}
    I verify headline is present        ${SubpageHeadlineLevel}         ${Pairwise}


TC_05 User can open Decision Teble tab
    [Tags]
    I navigate to homepage
    I open test design tool tab         ${DecisionTableTab}
    I verify headline is present        ${SubpageHeadlineLevel}         ${DecisionTable}


TC_06 User can open Other Techiques tab
    [Tags]
    I navigate to homepage
    I open test design tool tab         ${OtherTechniquesTab}
    I verify headline is present        ${SubpageHeadlineLevel}         ${DalsiTechniky}
    I expand Classification Tree
    I Expand State Transition
    I expand Boundry Value Analysis
    I expand Equivalence Partitioning

TC_07 User can select English
    [Tags]
    I navigate to homepage
    I switch to English
    I verify website is in English

TC_08 Contact form validation happy path
    [Tags]    wip
    I navigate to homepage
    I open contact info page
    I fill in contact form with correct values
    Capture Page Screenshot

TC_09 Contact form validation invalid email
    [Tags]    wip
    I navigate to homepage
    I open contact info page
    I fill in contact form with invalid email
    I send message to Tesena
    Verify error message is present