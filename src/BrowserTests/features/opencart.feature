Feature: Open Cart Search Functionality
  Scenario: Searching for Macbook from Homepage
    Given I am on the Homepage
    When I search for 'MacBook'
    Then Open Cart should return result for 'MacBook'