Feature: Orbitz Flight Search functionality

  Scenario: verify user is able to search for the available flights for a future dates
    Given user is on the orbitz homepage
    When user selects the flights tab
    And user choose round trip option
    And user search for "Columbus" city and selects "CMH" airport for departure
    And user search for "Cleveland" city and selects "CLE" airport for arrival
    And user choose future dates for the arrival and departure dates
    And search for the available flights
    Then verify user should see the available flights
    And verify user gets the flight results for the selected dep date

  Scenario: verify user is able to search for the available flights for a future dates in declarative style
    Given user is on the orbitz homepage
    When user search for the available flights for the future dates
    Then verify user should see the available flights
    And verify user gets the flight results for the selected dep date
