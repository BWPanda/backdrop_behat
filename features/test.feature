Feature: Test Behat with Backdrop CMS

  Scenario: Login as admin
    Given I am on the homepage
    When I follow "Login"
    And I fill in "Username or email" with "admin"
    And I fill in "Password" with "password"
    And I press "Log in"
    Then I should see "Welcome to Backdrop CMS!"

  # This test is designed to fail.
  Scenario: Try to edit content as an anonymous user
    Given I am on the homepage
    When I follow "About"
    And I follow "Edit"
    Then I should see "Edit Page About"
