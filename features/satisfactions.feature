Feature: Manage Satisfactions

  Scenario: Add Satisfaction
    Given there is no satisfaction with name "John Doe"
    When I add a satisfaction with name "John Doe", category "emotion", date "2/2/2016" and score "5"
    Then I should see "John Doe" listed
