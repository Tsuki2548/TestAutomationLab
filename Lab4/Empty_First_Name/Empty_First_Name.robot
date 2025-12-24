*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost:7272/Lab4/Registration.html
${BROWSER}    chrome
${LASTNAME}    Sodsai
${ORGANNIZATION}    CS KKU
${EMAIL}    somyod@kkumail.com
${PHONE}    091-001-1234

*** Test Cases ***
Open Workshop Register Page
    Open Browser    ${URL}    ${BROWSER}

Register Fail Empty First Name
    Input Text    id=lastname    ${LASTNAME}
    Input Text    id=organization    ${ORGANNIZATION}
    Input Text    id=email    ${EMAIL}
    Input Text    id=phone    ${PHONE}
    Click Button    id=registerButton
    Sleep    5s
    Close Browser