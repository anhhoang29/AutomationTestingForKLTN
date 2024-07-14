*** Settings ***
Library     Zoomba.GUILibrary  run_on_failure=None    WITH NAME    GUILibrary



*** Variables ***
${URL}      https://www.google.com

${HOME_PAGE}    http://localhost:3000/


*** Keywords ***
Open Browser Chrome
    Open Browser    ${URL}    Chrome
    Maximize Browser Window

Go To Homepage
    Go To    ${HOME_PAGE}


