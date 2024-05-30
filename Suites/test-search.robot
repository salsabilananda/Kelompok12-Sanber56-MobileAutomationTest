*** Settings ***
Resource        ../PageObject-BookFlight/LoginPage/loginPage.robot
Resource        ../PageObject-BookFlight/SearchPage/searchPage.robot

*** Test Cases ***
User should be able to login with valid credential
    Open Flight Application 
    Verify Homescreen
    Click Sign In Button
    Input Username   
    Input User Password
    Click Login Button On Screen
    Verify Succes Login

User Search for The Ticket
    Click SearchPage Button
    Verify Search Page
    Input Ticket
    Click Search Button