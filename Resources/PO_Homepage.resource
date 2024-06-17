*** Settings ***
Resource       ./common.robot


*** Keywords ***

I open Browser
    [Documentation]     Opens a new browser window using the Chrome browser and navigates to the given URL
    SeleniumLibrary.Open Browser    about:blank    browser=chrome
    Maximize Browser Window

I navigate to homepage
    [Documentation]    Navigates to the homepage URL, Waits until the Tesena logo element is present on the page.
    SeleniumLibrary.Go To               ${root_url}[${environment}]
    Wait Until Page Contains Element    ${Tesena_logo}

I see header
    [Documentation]    Waits until the page contains the element identified by the ${header} locator. This keyword is used to ensure that the header element is present on the page before proceeding with further actions.
    Wait until page contains element       ${header}

I see Tesena logo
    [Documentation]    Verifies that the Tesena logo is present on the page.
    Wait until page contains element       ${Tesena_logo}

I see footer
    [Documentation]    Verifies that the footer is present on the page.
    Wait until page contains element       ${footer}

I see social media links
    [Documentation]    Verifies that the social media links are present on the page.
    Wait until page contains element       ${FBlink}
    Wait until page contains element       ${INSTAlink}
    Wait until page contains element       ${YTlink}
    Wait until page contains element       ${LinkedINlink}

I verify website is in English
    [Documentation]   Verifies that the specified English text is present on the page.
    Page Should Contain Element        ${WelcomeInEnglish}
    Capture Page Screenshot

I verify English Url is correct
    [Documentation]    Verifies that the English URL is correct.
    Wait Until Location Is              ${EnglishUrl}




*** Variables ***

${header}                           id:header-index
${Tesena_logo}                      css:#header-index a
${footer}                           css:#footer
${MainPageHeadlineLevel}            css:h1
${FBlink}                           css:.fa-facebook
${INSTAlink}                        css:.fa-instagram
${YTlink}                           css:.fa-youtube
${LinkedINlink}                     css:.fa-linkedin
${FBurl}                            https://www.facebook.com/tesena.smart.testing/
${INSTAurl}                         https://www.instagram.com/jsmetesena/?utm_medium=copy_link
${YTurl}                            https://www.youtube.com/channel/UCXAYaVsc9AocWpVzHiGXtHQ
${LinkedINurl}                      https://www.linkedin.com/company/tesena/
${MainPageHeadline}                 Testing 360°
${WelcomeInEnglish}                 css:.index-div-left > p
${EnglishUrl}                       https://testdesign.tesena.com/en
${ContactHeadline}                  Spojte se s námi
${OrthogonalCoveringArrays}         Orthogonal Arrays
${Pairwise}                         Pairwise
${DecisionTable}                    Decision Table
${DalsiTechniky}                    Další techniky
${ClassificationTreeHeadline}       Classification Tree
