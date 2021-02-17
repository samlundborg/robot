*** Settings ***
Documentation           This is some basic info about the whole test suite.
Library                 SeleniumLibrary

*** Test Cases ***
User can access website
    [Documentation]             This is some basic info about the test
    [Tags]                      Test 1
    Open browser                about:blank  chrome
    Go to                       https://www.willys.se/
    Wait until page contains    Handla billig mat online
    Close browser
