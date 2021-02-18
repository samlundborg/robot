
*** Keywords ***
Begin Web Test
    Open browser                about:blank  ${BROWSER}

Go to Web Page
    Load Page
    Verify Page Loaded

Load Page
    Go to                       ${URL}

Verify Page Loaded
    ${link_text}                Get Title
    Should Be Equal             ${link_text}    Handla billig mat online | Willys

Search for Product
    [Arguments]                 ${search_term}
    Enter Search Term           ${search_term}
    Submit Search
    Verify Search Completed     ${search_term}

Enter Search Term
    [Arguments]                 ${search_term}
    Input text                  id:selenium--search-items-input     ${search_term}

Submit Search
    Press Keys                  xpath://*[@id="selenium--search-items-input"]       RETURN

Verify Search Completed
    [Arguments]                 ${search_term}
    Wait until Page Contains Element    xpath://*[id="selenium--product-grid-header"]
    ${actual_term}              Get Text    xpath://*[id="selenium--product-grid-header"]
    Should Be Equal             "Sökord: ${search_term}"    "${actual_term}"

End Web Test
    Close browser
