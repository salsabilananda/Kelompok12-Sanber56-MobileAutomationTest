*** Settings ***
Resource        ../PageObject-BookFlight/LoginPage/loginPage.robot
Resource        ../PageObject-BookFlight/BookPage/bookPage.robot
Resource        ../PageObject-BookFlight/PaymentPage/paymentPage.robot

*** Test Cases ***
User should be able to login with valid credential
    Open Flight Application 
    Verify Homescreen
    Click Sign In Button
    Input Username   
    Input User Password
    Click Login Button On Screen
    Verify Succes Login

User Booking Oneway Ticket Toronto to Paris
    Click BookPage Button  
    Verify Book Page 
    Select Departure from Toronto 
    Select Destination to Paris
    Select Flight Class  
    Choose Start Date 
    Choose End Date
    Click Flight Button    
    Choose Flexible Date Button  
    Click Book Button

User Pay For The Ticket
    Click to Pay According to The Schedule 
    Click Confirm
    Verify Reservation Number



