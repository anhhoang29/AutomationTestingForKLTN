*** Settings ***
Resource    ../Resource/Testkeyword/Login.resource
Resource    ../Resource/Testkeyword/Base.resource
Library     Zoomba.GUILibrary  run_on_failure=None    WITH NAME    GUILibrary


Test Template   Vaildate Login with Username and Password
*** Variables ***
${BROWSER}  Chrome
${URL}      https://www.google.com


*** Test Cases ***        username                                 password
Login Test               hoangvuanh101@gamil.com                 12345678
Emtpy Username Test      ${EMPTY}                                 12345678


*** Keywords ***
Vaildate Login with Username and Password
    [Arguments]    ${username}    ${password}
    Given Open Browser Chrome
    And Go To Homepage
    And Go to Login Page
    When User login with username and password    ${username}    ${password}
    Then User Should See Messsage
    
