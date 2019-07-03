# Created by akshaya at 3-7-19
Feature: As an user I am able to give feedback using feedback button at web application

  Scenario: As an user I am able to see feedback button

    Given I have an application whose home page is integrated with Usabilla Feedback button
    When I open a page
    Then I can see Feedack button at right hand middle on the page
    And Repeat the above steps for different browsers and different view ports

    #No release if above scenario fails.

  Scenario: As an user I am able to see "Specific Feedback" and "Generic feedback"

    Given I have an application whose home page is integrated with Usabilla Feedback button
    When I click on Feedback button
    Then  I am able to see "Specific Feedback" and "Generic feedback"
    And Repeat the above steps for different browsers and different view ports

      #No release if above scenario fails.



  Scenario Outline: As an user I am able to give "Generic feedback" with suggestion,compliment,and question

    Given I have an application whose home page is integrated with Usabilla Feedback button
    When I click on Feedback button
    Then I am able to see "Specific Feedback" and "Generic feedback"
    When I click on click on "Generic feedback"
    Then I am able to see different kind of "Smiley"
    When I click "Smiley"
    Then I am able to see drop down with "Subject"
    When I select "Subject"                                                                                          #No release if above scenario fails.
    Then I am able to see form with text box, email box, and ratings
    And  I am able see submit button                                                                                  #No release if current step  fails.
    When I fill text box, email box, and ratings
    And  Click Submit button
    Then A pop should display with Thanks for leaving feedback!                                                       #No release if current step  fails.
    And  I am  able  to see Continue browsing button                                                                  #No release if current step  fails.
    When I click on Continue browsing button
    Then Pop should not display                                                                                       #No release if current step  fails.
    And  I am able continue browsing                                                                                  #No release if current step  fails.
    And Repeat the above steps for different browsers and different view ports

    Examples:

      | Smiley    |    Subject   |
      |  Hate     |   Suggestion |
      |  Dislike  |   Compliment |
      |  Neutral  |   Question   |
      |  Like     |              |
      |  Love     |              |

  Scenario Outline: As an user I am able to give "Generic feedback" with bug

    Given I have an application whose home page is integrated with Usabilla Feedback button
    When I click on Feedback button
    Then I am able to see "Specific Feedback" and "Generic feedback"
    When I click on click on "Generic feedback"
    Then I am able to see different kind of "Smiley"
    When I click "Smiley"
    Then I am able to see drop down with "Subject"
    When I select "Subject"                                                                                          #No release if above scenario fails.
    Then I am able to see form with text box, email box, and ratings
    And  I am able see submit button                                                                                  #No release if current step  fails.
    When I fill text box, email box
    And  Click Submit button
    Then A pop should display with Thanks for leaving feedback!                                                       #No release if current step  fails.
    And  I am  able  to see Continue browsing button                                                                  #No release if current step  fails.
    When I click on Continue browsing button
    Then Pop should not display                                                                                       #No release if current step  fails.
    And  I am able continue browsing                                                                                  #No release if current step  fails.
    And Repeat the above steps for different browsers and different view ports

    Examples:

      | Smiley    |    Subject   |
      |  Hate     |     bug      |
      |  Dislike  |              |
      |  Neutral  |              |
      |  Like     |              |
      |  Love     |              |



  Scenario : As an user I am not able to give "Generic feedback" if I do not share message with them

    Given I have an application whose home page is integrated with Usabilla Feedback button
    When I click on Feedback button
    Then I am able to see "Specific Feedback" and "Generic feedback"
    When I click on click on "Generic feedback"
    Then I am able to see different kind of "Smiley"
    When I click "Smiley"
    Then I am able to see drop down with "Subject"
    When I select "Subject"                                                                                          #No release if above scenario fails.
    Then I am able to see form with text box, email box, and ratings
    And  I am able see submit button                                                                                  #No release if current step  fails.
    When I fill do not fill the text box
    And  Click Submit button
    Then A Error should be displayed "The field is required"                                                          #No release if current step  fails.


  Scenario Outline: As an user I am able to give "Specific feedback" with suggestion,compliment,and question

    Given I have an application whose home page is integrated with Usabilla Feedback button
    When I click on Feedback button
    Then I am able to see "Specific Feedback" and "Generic feedback"
    When I click on click on "Specific feedback"
    Then I can click snapshot of the issue
    When I click  the snapshot
    Then I am able to see different kind of "Smiley"
    When I click "Smiley"
    Then I am able to see drop down with "Subject"
    When I select "Subject"                                                                                          #No release if above scenario fails.
    Then I am able to see form with text box, email box, and ratings
    And  I am able see submit button                                                                                  #No release if current step  fails.
    When I fill text box, email box, and ratings
    And  Click Submit button
    Then A pop should display with Thanks for leaving feedback!                                                       #No release if current step  fails.
    And  I am  able  to see Continue browsing button                                                                  #No release if current step  fails.
    When I click on Continue browsing button
    Then Pop should not display                                                                                       #No release if current step  fails.
    And  I am able continue browsing                                                                                  #No release if current step  fails.
    And Repeat the above steps for different browsers and different view ports

    Examples:

      | Smiley    |    Subject   |
      |  Hate     |   Suggestion |
      |  Dislike  |   Compliment |
      |  Neutral  |   Question   |
      |  Like     |              |
      |  Love     |              |








