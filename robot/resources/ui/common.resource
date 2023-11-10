*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Start Browser On BBC Page
    Open Browser    https://www.bbc.co.uk/    chrome
    Maximize Browser Window
