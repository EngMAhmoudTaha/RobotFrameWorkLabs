*** Settings ***
Documentation    Test The Front Office web page
Resource        ../Resources/FrontOfficeApp.robot
Resource        ../Resources/CommonWeb.robot

# Add prerequests to began the test
Test Setup        Begin Web Test
Test Teardown     End Web Test

*** Variables ***
${BROWSER}        edge
${URL}            https://automationplayground.com/front-office/

*** Test Cases ***
Should be able to access "Team" page
    [Documentation]        Try to access team page from the home page
    [Tags]                 AccessTeamPage
    FrontOfficeApp.Go To Landing Page
    FrontOfficeApp.Got To "Team" Page

"Team" page should match requirements
    [Documentation]        Verify If the Team Page Matched the requirements
    [Tags]                 VerifyTeamPage
    FrontOfficeApp.Go To Landing Page
    FrontOfficeApp.Got To "Team" Page
    FrontOfficeApp.Verify Team Page
