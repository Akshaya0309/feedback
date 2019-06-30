Feature: As an user I am able to provide feedback of a application

Scenario: Find feedback button and click

  Given I have a valid web application integrated with Usabilla
  Then Feedback button should display
  When I click on feedback button
  Then Usabilla feedback pop up get display

  Scenario: User can provide a suggestion type as feedback using generic feedback button

    Given I have pop up with Generic feedback button
    When  I give feedback using Generic feedback button
    Then  I able to see new pop up with different kind of feedbacks
    When  I choose Love kind of feedback
    Then  I see a drop down which have suggestion type in the list
    When  I select  type suggestion
    Then  I see form to give a suggestion
    When  I fill the  form and submit
    Then  I see a pop with a message of submitting feedback
    And   I continue my browsing
