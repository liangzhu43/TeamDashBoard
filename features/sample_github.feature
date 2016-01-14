Feature: Tour Github

  Scenario: Show contributors
    Given in "https://github.com/liangzhu43/TeamDashBoard"
    When I go to contributor
    Then I should see "stanlylau" and "liangzhu43"
