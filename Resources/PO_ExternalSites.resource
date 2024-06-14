*** Settings ***
Library        OperatingSystem
Library        Collections
Library        SeleniumLibrary
Library        String
Library        RequestsLibrary
Library        Browser
Resource       ./PO_Homepage.resource


*** Keywords ***

I check Tesena FB page
    [Documentation]    Click on the Facebook link and wait until the Facebook page is loaded.
    Click Element                        ${FBlink}
    Wait Until Page Contains Element     ${Facebook}

 
I check Tesena INSTA page
    [Documentation]        #  works only for registered and logged in users
    Click Element                        ${INSTAlink}
    Wait Until Page Contains Element     ${Instagram}


I check Tesena YT page
    [Documentation]    Click on the Youtube link and wait until the Youtube page is loaded.
    Click Element                        ${YTlink}
    Wait Until Page Contains Element     ${YouTube}


I check Tesena LinkedIN page    
    [Documentation]   Click on the LinkedIn link and wait until the LinkedIn page is loaded. 
    Click Element                        ${LinkedINlink}
    Wait Until Page Contains Element     ${LinkedIN}

I navigate to external homepage
    [Documentation]    Navigates to the specified external homepage URL and waits until the page is fully loaded.
    [Arguments]        ${webUrl}
    SeleniumLibrary.Go To               ${webUrl}
    Wait Until Location Is              ${webUrl}


I accept cookies
    [Documentation]    Accept cookies and wait until the cookies question is closed.    
    Wait Until Element Is Visible       ${AcceptCookies}
    Execute JavaScript                  window.scrollTo(0,document.body.scrollHeight)
    Click Link                          ${AcceptCookies}


I verify social media link
    [Documentation]    Verifies that the specified social media link is present on the page and opens it.
    [Arguments]    ${SocialMediaLink}   ${SociaMediaUrl}    ${CloseButton}    ${SocialMediaElement}
    Wait Until Page Contains Element    ${SocialMediaLink}
    Scroll Element Into View            ${SocialMediaLink}
    Click Element                       ${SocialMediaLink}
    I close cookies question            ${CloseButton}
    Wait Until Location Is              ${SociaMediaUrl}
    Wait Until Page Contains Element    ${SocialMediaElement}


I close cookies question
    [Documentation]    Closes the cookies question by clicking the specified close button.
    [Arguments]         ${CloseButton}
    Wait Until Page Contains Element    ${CloseButton}
    Scroll Element Into View            ${CloseButton}
    Click Element                       ${CloseButton}


I close FB registration
    [Documentation]    Closes the Facebook registration by clicking the specified close button.
    Wait Until Page Contains Element    ${CloseFBRegistration}
    Click Element                       ${CloseFBRegistration}


*** Variables ***

${TestonaUrl}                       https://expleo.com/global/en/
${DrawIOUrl}                        https://www.drawio.com/
${CreatlyUrl}                       https://creately.com/lp/state-machine-diagram-tool/
${Facebook}                         id:facebook
${Instagram}                        //span[contains(text(),'jsmetesena')]
${Youtube}                          //a[contains(text(),'tesena.com')]
${LinkedIn}                         //img[@alt='Tesena']
${CloseFBCookies}                   (//span[contains(text(),'Odmítnout volitelné soubory cookie')])[1]
${CloseYTCookies}                   (//span[contains(text(),'Odmítnout')])[1]/parent::button
${CloseFBRegistration}              //div[@aria-label='Zavřít']
${CloseLinkedINRegistration}        //button[contains(@class,'modal-dismiss')]
${AcceptCookies}                    //a[contains(text(),'Accept')]