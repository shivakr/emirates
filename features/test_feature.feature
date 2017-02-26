Feature: Emirates app Test feature

  Background: common steps
    Given the user is on the home screen

  @car
  Scenario: Test for the display of car name
    And user taps on Chrome icon
    When user enters their own name
    And selects their favourite car
    And tap on send me your name
    Then your name and car is displayed

  @crash
  Scenario: App crash log capture
    When the user taps on display a popup window
    Then verify the text on the popup window
    And click dismiss
    When click on throw unhandled exception
    Then verify the app crashes and capture the logs

