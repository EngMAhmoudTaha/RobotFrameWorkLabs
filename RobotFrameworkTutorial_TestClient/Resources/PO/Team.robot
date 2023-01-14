*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${MemberOne}        css=#team > div > div:nth-child(2) > div:nth-child(1) > div > img
${MemberTwo}        css=#team > div > div:nth-child(2) > div:nth-child(2) > div > img
${MemberThree}      css=#team > div > div:nth-child(2) > div:nth-child(3) > div > img  

*** Keywords ***
"Team" Page Should Has Three Images
    Page Should Contain Image    ${MemberOne}
    Page Should Contain Image    ${MemberTwo}
    Page Should Contain Image    ${MemberThree} 