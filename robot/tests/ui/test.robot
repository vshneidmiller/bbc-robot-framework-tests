*** Settings ***
Library           SeleniumLibrary
Resource          ../../resources/ui/common.resource
Resource          ../../resources/ui/home.resource
Library        Collections
Suite Setup    Start Browser On BBC Page
Suite Teardown    Close All Browsers

*** Test Cases ***
Menu Items
    [Documentation]    Verify the menu items on the home page
    @{menu_items}    Create List    Home    News    Sport    Weather    iPlayer    Sounds    Bitesize    More menu
    Verify Menu Items    @{menu_items}

