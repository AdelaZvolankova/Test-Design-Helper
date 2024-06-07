*** Settings ***

Resource  ../Resources/keywords.ui.robot
Resource  ../Configs/config.resource
Library        OperatingSystem
Library        Collections
Library        SeleniumLibrary
Library        String
Library        RequestsLibrary



Test Setup        I open Browser
Test Teardown     Close All Browsers
Test Timeout      120s

*** Variables ***
${environment}  test


*** Test Cases ***

TC_01 User can see Homepage
    [Documentation]
    [Tags]  Smoke
    I navigate to home page
    I see header
    I see Tesena logo
    I see footer
    I see social media links
    I verify headline is present        ${MainPageHeadlineLevel}        ${MainPageHeadline}


TC_02 User can see contact info
    [Documentation]
    [Tags]
    I navigate to homepage
    I open contact info page
    I verify headline is present        ${SubpageHeadlineLevel}         ${ContactHeadline}
    I verify contact form is present

TC_03 User can see more information about the app
    [Documentation]
    [Tags]
    I navigate to homepage
    I go to more information page
    Verify I see more information

TC_04 User can open Orthogonal Arrays tab
    [Documentation]
    [Tags]
    I navigate to homepage
    I open test design tool tab         ${OrthogonalCoveringArraysTab}
    I verify headline is present        ${SubpageHeadlineLevel}         ${OrthogonalCoveringArrays}


TC_05 User can open Pairwise Arrays tab
    [Documentation]
    [Tags]
    I navigate to homepage
    I open test design tool tab         ${PairwiseTab}
    I verify headline is present        ${SubpageHeadlineLevel}         ${Pairwise}


TC_06 User can open Decision Teble tab
    [Documentation]
    [Tags]
    I navigate to homepage
    I open test design tool tab         ${DecisionTableTab}
    I verify headline is present        ${SubpageHeadlineLevel}         ${DecisionTable}


TC_07 User can open Other Techiques tab
    [Documentation]
    [Tags]
    I navigate to homepage
    I open test design tool tab         ${OtherTechniquesTab}
    I verify headline is present        ${SubpageHeadlineLevel}         ${DalsiTechniky}
    I expand Classification Tree
    I Expand State Transition
    I expand Boundry Value Analysis
    I expand Equivalence Partitioning

TC_08 User can select English
    [Documentation]
    [Tags]
    I navigate to homepage
    I switch to English
    I verify website is in English

TC_09 Contact form validation happy path
    [Documentation]
    [Tags]
    I navigate to homepage
    I open contact info page
    I fill in contact form with correct values
    Capture Page Screenshot

TC_10 Contact form validation invalid email
    [Documentation]
    [Tags]
    I navigate to homepage
    I open contact info page
    I fill in contact form with invalid email
    I send message to Tesena
    Verify error message is present


