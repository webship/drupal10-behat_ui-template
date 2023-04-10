Feature: Default testing feature

@javascript
Scenario: Check Most viewed at home page
  Given I am not logged in
   When I go to the homepage
   Then I should see "Welcome"
