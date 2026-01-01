*** Settings ***
Library    SeleniumLibrary
Test Setup        Open Workshop Register Page
Test Teardown     Close Browser

*** Variables ***
${URL}    http://localhost:7272/Lab4/Registration.html
${BROWSER}    chrome
${FIRSTNAME}    Somyod
${LASTNAME}    Sodsai
${ORGANNIZATION}    CS KKU
${EMAIL}    somyod@kkumail.com
${PHONE}    091-001-1234
${INVALID_PHONE}    1234

*** Keywords ***
Open Workshop Register Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

*** Test Cases ***

Register Fail Empty First Name
    Input Text    id=lastname    ${LASTNAME}
    Input Text    id=organization    ${ORGANNIZATION}
    Input Text    id=email    ${EMAIL}
    Input Text    id=phone    ${PHONE}
    Click Button    id=registerButton
    Page Should Contain    Please enter your first name!!

Register Fail Empty Last Name
    Input Text    id=firstname    ${FIRSTNAME}
    Input Text    id=organization    ${ORGANNIZATION}
    Input Text    id=email    ${EMAIL}
    Input Text    id=phone    ${PHONE}
    Click Button    id=registerButton
    Page Should Contain    Please enter your last name!!

Register Fail Empty First Name And Last Name
    Input Text    id=organization    ${ORGANNIZATION}
    Input Text    id=email    ${EMAIL}
    Input Text    id=phone    ${PHONE}
    Click Button    id=registerButton
    Page Should Contain    Please enter your name!!

Register Fail Empty Email
    Input Text    id=firstname    ${FIRSTNAME}
    Input Text    id=lastname    ${LASTNAME}
    Input Text    id=organization    ${ORGANNIZATION}
    Input Text    id=phone    ${PHONE}
    Click Button    id=registerButton
    Page Should Contain    Please enter your email!!

Register Fail Empty Phone Number
    Input Text    id=firstname    ${FIRSTNAME}
    Input Text    id=lastname    ${LASTNAME}
    Input Text    id=email    ${EMAIL}
    Click Button    id=registerButton
    Page Should Contain    Please enter your phone number!!

Register Fail Invalid Phone Number
    Input Text    id=firstname    ${FIRSTNAME}
    Input Text    id=lastname    ${LASTNAME}
    Input Text    id=organization    ${ORGANNIZATION}
    Input Text    id=email    ${EMAIL}
    Input Text    id=phone    ${PHONE}
    Click Button    id=registerButton
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678)