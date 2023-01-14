*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${URL}
${RobotFrameworkLink}        css=#mainNav > div > div.navbar-header.page-scroll > a
*** Keywords ***
Navigate To Front Office Home Page
    Go To    ${URL}

Verify The Front Office Home Page Open
    Wait Until Page Contains Element    ${RobotFrameworkLink} 