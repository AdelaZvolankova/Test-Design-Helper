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


 I navigate to external homepage
    [Documentation]
    [Arguments]        ${webUrl}
    SeleniumLibrary.Go To               ${webUrl}
    Wait Until Location Is              ${webUrl}


I accept cookies
    Wait Until Element Is Visible       ${AcceptCookies}
    Execute JavaScript                  window.scrollTo(0,document.body.scrollHeight)
    Click Link                          ${AcceptCookies}


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


*** Variables ***

${TestonaUrl}                       https://expleo.com/global/en/
${DrawIOUrl}                        https://www.drawio.com/
${CreatlyUrl}                       https://creately.com/lp/state-machine-diagram-tool/
${Facebook}                         id:facebook
${Instagram}                        //span[contains(text(),'jsmetesena')]
${Youtube}                          //yt-formatted-string[contains(text(),'Tesena')]
${LinkedIn}                         //img[@alt='Tesena']
${CloseFBCookies}                   (//span[contains(text(),'Odmítnout volitelné soubory cookie')])[1]
${CloseYTCookies}                   (//span[contains(text(),'Odmítnout')])[1]/parent::button
${CloseFBRegistration}              //div[@aria-label='Zavřít']
${CloseLinkedINRegistration}        //button[contains(@class,'modal-dismiss')]
${AcceptCookies}                    //a[contains(text(),'Accept')]