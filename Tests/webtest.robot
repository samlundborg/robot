*** Settings ***
Documentation           This is some basic info about the whole test suite.
Resource                ../Resources/keywords.robot
Library                 SeleniumLibrary
Suite Setup             Begin Web Test
Suite Teardown          End Web Test

*** Variables ***
${BROWSER}          chrome
${URL}              https://www.willys.se/

*** Test Cases ***
User can access website
    [Documentation]             This is some basic info about the test
    [Tags]                      Test 1
    Go to Web Page

User can search for kiwi
    [Documentation]             This is some basic info about the test
    [Tags]                      Test 2
    Go to Web Page
    Search for Product          kiwi

User can search for hundgodis
    [Documentation]             This is some basic info about the test
    [Tags]                      Test 3
    Go to Web Page
    Search for Product          hundgodis