*** Settings ***
Resource        ./PO/Landing.robot
Resource        ./PO/TopNav.robot
Resource        ./PO/Team.robot

*** Variables ***


*** Keywords ***
Go To Landing Page
    Landing.Navigate To Front Office Home Page
    Landing.Verify The Front Office Home Page Open

Got To "Team" Page
    TopNav.Navigate To "Team" Page
    TopNav.Verify The "Team" Page Loaded

Verify Team Page
    Team."Team" Page Should Has Three Images