@mobile
Feature: Mobile Stream

  Background: 
     Given I open the app for the first time 
  Scenario: Add New Teams
   
      When I choose to pick my own teams:
        | Dodgeball |  
        | MMA       |  
        | Boxing    |  
        | Sailing   |  
        And I tap the "Dodgeball" button 
      Then the stream should load