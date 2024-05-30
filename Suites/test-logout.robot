*** Settings ***
Resource        ../PageObject-BookFlight/LoginPage/loginPage.robot
Resource        ../PageObject-BookFlight/LogoutPage/logoutPage.robot

*** Test Cases ***
User should be able to login with valid credential
    Open Flight Application 
    Verify Homescreen
    Click Sign In Button
    Input Username   
    Input User Password
    Click Login Button On Screen
    Verify Succes Login

User Log Out
    Verify Homescreen After Login
    Click Sign Out Button