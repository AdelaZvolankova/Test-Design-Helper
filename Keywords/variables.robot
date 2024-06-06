*** Settings ***

Variables        test_data.py

*** Variables ***

${header}                           //*[@id="header-index"]
${Tesena_logo}                      //*[@id="header-index"]/a[@href='https://www.tesena.com/']
${footer}                           //div[@id='footer']
${MainPageHeadlineLevel}            //h1
${FBlink}                           //div[@id='footer']/a[@href='https://www.facebook.com/tesena.smart.testing/']
${INSTAlink}                        //div[@id='footer']/a[@href='https://www.instagram.com/jsmetesena/?utm_medium=copy_link']
${YTlink}                           //div[@id='footer']/a[@href='https://www.youtube.com/channel/UCXAYaVsc9AocWpVzHiGXtHQ']
${LinkedINlink}                     //div[@id='footer']/a[@href='https://www.linkedin.com/company/tesena/']
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
${Testona}                          //a[@href='https://expleo.com/global/en/']
${DrawIO1}                          (//a[@href='https://www.drawio.com/'])[1]
${DrawIO2}                          (//a[@href='https://www.drawio.com/'])[2]
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