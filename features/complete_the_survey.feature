Feature: Complete the survey
  For a chance to get the burritos, you need to complete the survey

  Scenario: Fill it out
    Given I am on the survey page
    When I answer all of questions
    And I submit the form
    Then I should see a thank you page
