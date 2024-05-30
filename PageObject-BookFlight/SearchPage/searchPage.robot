*** Settings ***
Documentation    Halaman Search Tiket Pesawat
Resource         ../base.robot

*** Keywords ***
Click SearchPage Button
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]

Verify Search Page
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/enterFlight"]

Input Ticket
    Wait Until Element Is Visible    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]
    Input Text                       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]  text=DA935

Click Search Button
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]     
