*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${TEAM_PAGE}           xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a
${Heading_TeamPage}    xpath=//*[@id="team"]/div/div[1]/div/h2

*** Keywords ***
Navigate To "Team" Page
    Click Element    ${TEAM_PAGE}
    Sleep    3s

Verify The "Team" Page Loaded
    Wait Until Page Contains Element    ${Heading_TeamPage}