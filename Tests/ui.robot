*** Settings ***

Resource      ../Resources/keywords.resource
Resource      ../Configs/config.resource

Test Setup        I open Browser
Test Teardown     Close All Browsers
Test Timeout      120s


*** Variables ***

${environment}  prod


*** Test Cases ***


TC_01 User can see Homepage
    [Documentation]   Verifies that the user can see the homepage and its main elements.
    [Tags]  Smoke
    I navigate to home page
    I see header
    I see Tesena logo
    I see footer
    I see social media links
    I verify headline is present        ${MainPageHeadlineLevel}        ${MainPageHeadline}


TC_02 User can see contact info
    [Documentation]    Verifies that the user can see the contact info page and its main elements.
    [Tags]  Regression
    I navigate to homepage
    I open contact info page
    I verify headline is present        ${SubpageHeadlineLevel}         ${ContactHeadline}
    I verify contact form is present


TC_03 User can see more information about the app
    [Documentation]   Verifies that the user can navigate to the more information page and see the expected content.
    [Tags]  Regression
    I navigate to homepage
    I go to more information page
    Verify I see more information and link to trainings


TC_04 User can open Orthogonal Arrays tab
    [Documentation]    Verifies that the user can open Orthogonal Arrays tab and see the expected content.
    [Tags]  Regression
    I navigate to homepage
    I open test design tool tab         ${OrthogonalCoveringArraysTab}
    I verify headline is present        ${SubpageHeadlineLevel}         ${OrthogonalCoveringArrays}
    I verify more info is expandable

TC_05 User can open Pairwise tab
    [Documentation]  Verifies that the user can open Pairwise tab and see the expected content.
    [Tags]  Regression
    I navigate to homepage
    I open test design tool tab         ${PairwiseTab}
    I verify headline is present        ${SubpageHeadlineLevel}         ${Pairwise}
    I verify more info is expandable


TC_06 User can open Decision Teble tab
    [Documentation]    Verifies that the user can open Decision Teble tab and see the expected content
    [Tags]  Regression
    I navigate to homepage
    I open test design tool tab         ${DecisionTableTab}
    I verify headline is present        ${SubpageHeadlineLevel}         ${DecisionTable}
    I verify more info is expandable


TC_07 User can open Other Techiques tab
    [Documentation]  Verifies that the user can open the Other Techniques tab and see the expected content.
    [Tags]  Regression
    I navigate to homepage
    I open test design tool tab         ${OtherTechniquesTab}
    I verify headline is present        ${SubpageHeadlineLevel}         ${DalsiTechniky}
    I expand Classification Tree
    I Expand State Transition
    I expand Boundry Value Analysis
    I expand Equivalence Partitioning


TC_08 User can select English
    [Documentation]   Verifies that the user can switch the website to English and confirm the website is in English.
    [Tags]  Regression
    I navigate to homepage
    I switch to English
    I verify website is in English
    I verify English Url is correct


TC_09 Contact form validation happy path
    [Documentation]  Verifies that the user can fill out the contact form with correct values and the page screenshot is captured.
    [Tags]  Regression      wip
    I navigate to homepage
    I open contact info page
    I fill in contact form      ${TestingName}     ${TestEmail}     ${TestMessage}
    Capture Page Screenshot


TC_10 Contact form validation invalid email
    [Documentation]    Verifies that the user can fill out the contact form with an invalid email and the expected error message is displayed.
    [Tags]  Regression          wip
    I navigate to homepage
    I open contact info page
    I fill in contact form      ${TestingName}      ${InvalidEmail}     ${TestMessage}
    I send message to Tesena
    Verify error message is present

TC_11 Contact form validation empty message
    [Documentation]    Verifies that the user can fill out the contact form with an invalid email and the expected error message is displayed.
    [Tags]  Regression          wip
    I navigate to homepage
    I open contact info page
    I fill in contact form        ${TestingName}      ${TestEmail}     ${EmptyMessage}
    I send message to Tesena
    Verify error message is present

TC_12 Social media links are working - FB
    [Documentation]   Verifies that the user can open Tesena Facebook and see the expected content.
    [Tags]  Regression
    I navigate to homepage
    I verify social media link      ${FBlink}      ${FBurl}    ${CloseFBCookies}    ${Facebook}
    I close FB registration
    Capture Page Screenshot


TC_13 Social media links are working - YOUTUBE
    [Documentation]    Verifies that the user can open Tesena Yoututbe and see the expected content.
    [Tags]  Regression
    I navigate to homepage
    I verify social media link      ${YTlink}      ${YTurl}   ${CloseYTCookies}    ${Youtube}
    Capture Page Screenshot


TC_14 Social media links are working - LinkedIn
    [Documentation]    Verifies that the user can open Tesena LinkedIn and see the expected content.
    [Tags]  Regression
    I navigate to homepage
    I verify social media link      ${LinkedINlink}      ${LinkedINurl}   ${CloseLinkedINRegistration}    ${LinkedIn}
    Capture Page Screenshot


TC_15 External links are working - Testona
    [Documentation]    Verifies that the user can navigate to the external Testona homepage.
    [Tags]  Regression
    I navigate to external homepage     ${TestonaUrl}
    Capture Page Screenshot


TC_16 External links are working - DrawIO
    [Documentation]  Verifies that the user can navigate to the external DrawIO homepage.
    [Tags]  Regression
    I navigate to external homepage     ${DrawIOUrl}
    Capture Page Screenshot