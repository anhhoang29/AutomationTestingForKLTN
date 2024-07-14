*** Settings ***
Resource    Base.resource
Library     Zoomba.GUILibrary  run_on_failure=None    WITH NAME    GUILibrary



*** Variables ***



*** Keywords ***
Go to Login Page
    Go To    ${HOME_PAGE}/login
User login with username and password
    [Arguments]    ${username}    ${password}
    Input Text    id=login-email    ${username}
    Input Text    id=login-password    ${password}
    Click Element    id=login-submit
    Sleep    2
    Capture Page Screenshot
    Element Should Be Visible    xpath=//div[@class='alert alert-danger'

