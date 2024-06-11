*** Variables ***

${header}                           //*[@id="header-index"]
${Tesena_logo}                      //*[@id="header-index"]/a[@href='https://www.tesena.com/']
${footer}                           //div[@id='footer']
${MainPageHeadlineLevel}            //h1
${FBlink}                           //div[@id='footer']/a[@href='${FBurl}']
${INSTAlink}                        //div[@id='footer']/a[@href='${INSTAurl}']
${YTlink}                           //div[@id='footer']/a[@href='${YTurl}']
${LinkedINlink}                     //div[@id='footer']/a[@href='${LinkedINurl}']
${FBurl}                            https://www.facebook.com/tesena.smart.testing/
${INSTAurl}                         https://www.instagram.com/jsmetesena/?utm_medium=copy_link
${YTurl}                            https://www.youtube.com/channel/UCXAYaVsc9AocWpVzHiGXtHQ
${LinkedINurl}                      https://www.linkedin.com/company/tesena/
${ContactUsButton}                  //div[contains(text(),'Kontaktujte nás')]
${SubpageHeadlineLevel}             //h2
${ContactForm}                      //form[@id='contact-form']
${OrthogonalCoveringArraysTab}      //a[contains(text(),'Orthogonal & Covering Arrays')]
${PairwiseTab}                      //a[contains(text(),'Pairwise')]
${DecisionTableTab}                 //a[contains(text(),'Decision Table')]
${OtherTechniquesTab}               //a[contains(text(),'Další techniky')]
${ClassificationTree}               (//button[@id="classificationTree"])[1]
${StateTransition}                  (//button[@id="classificationTree"])[2]
${BVA}                              (//button[@id="classificationTree"])[3]
${EVP}                              (//button[@id="classificationTree"])[4]
${Testona}                          //a[@href='${TestonaUrl}']
${TestonaUrl}                       https://expleo.com/global/en/
${DrawIO1}                          (//a[@href='${DrawIOUrl}'])[1]
${DrawIO2}                          (//a[@href='${DrawIOUrl}'])[2]
${DrawIOUrl}                        https://www.drawio.com/
${Creatly}                          //a[@href='https://creately.com/lp/state-machine-diagram-tool/']
${BVAExplained}                     //p[contains(text(),'Boundary value analysis je testovací technika')]
${BVAExample}                       //p[contains(text(),'Tedy hraniční hodnoty dle výše uvedeného budou')]
${EVPExplained}                     //p[contains(text(),'Equivalence partitioning je testovací technika')]
${EVPExample}                       //p[contains(text(),'Pro testování data')]
${SwitchToEnglish}                  //a[contains(text(),'EN')]
${SwitchToCzech}                    //a[contains(text(),'CS')]
${WelcomeInEnglish}                 //p[contains(text(),'Welcome to the world of effective Test Analysis!')]
${EmailInput}                       //input[@id='email']
${NameInput}                        //input[@id='user']
${MessageInput}                     //textarea[@id='message']
${SubmitMessageButton}              //form[@id='contact-form']/button[@id='submit']
${EmailErrorMessage}                //div[@id='email-error']
${ChciVedetVic}                     //div[contains(text(),'CHCI VĚDĚT VÍC')]
${MainPageHeadline}                 Testing 360°
${ContactHeadline}                  Spojte se s námi
${OrthogonalCoveringArrays}         Orthogonal Arrays
${Pairwise}                         Pairwise
${DecisionTable}                    Decision Table
${DalsiTechniky}                    Další techniky
${ClassificationTreeHeadline}       Classification Tree
${TestingName}                      John Doe
${TestEmail}                        john@doe.com
${TestMessage}                      This is my question.
${InvalidEmail}                     abc123
${LinkToTrainings}                  //a[@href="https://www.tesena.com/test-design-techniky"]
${Facebook}                         id:facebook
${Instagram}                        //span[contains(text(),'jsmetesena')]
${Youtube}                          //yt-formatted-string[contains(text(),'Tesena')]
${LinkedIn}                         //img[@alt='Tesena']
${Download}                         //a[contains(text(),'Stáhnout')]
${CloseFBCookies}                   (//span[contains(text(),'Odmítnout volitelné soubory cookie')])[1]
${CloseYTCookies}                   (//span[contains(text(),'Odmítnout')])[1]/parent::button
${CloseFBRegistration}              //div[@aria-label='Zavřít']
${CloseLinkedINRegistration}        //button[contains(@class,'modal-dismiss')]
${ShowMoreInfo}                     //span[@class='show-more-btn']
${ShowLessInfo}                     //span[contains(text(),'Méně')]
${EnglishUrl}                       https://testdesign.tesena.com/en
${AcceptCookies}                    //a[contains(text(),'Accept')]
${EmptyMessage}



