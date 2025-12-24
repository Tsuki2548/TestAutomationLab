*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost:7272/Lab4/Registration.html
${BROWSER}    chrome
${FIRSTNAME}    Somyod
${LASTNAME}    Sodsai
${EMAIL}    somyod@kkumail.com

*** Test Cases ***
Open Workshop Register Page
    Open Browser    ${URL}    ${BROWSER}

Register Fail Empty Phone Number
    Input Text    id=firstname    ${FIRSTNAME}
    Input Text    id=lastname    ${LASTNAME}
    Input Text    id=email    ${EMAIL}
    Click Button    id=registerButton
    Sleep    5s
    Close Browser