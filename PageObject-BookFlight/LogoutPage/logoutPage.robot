*** Settings ***
Documentation        Berkaitan dengan test logout page
Resource             ../base.robot


*** Keywords ***
Verify Homescreen After Login
    Element Should Be Visible        locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView"]
Click Sign Out Button
    Click Element                    locator=//android.widget.Button[@text="Sign Out"] 
 

