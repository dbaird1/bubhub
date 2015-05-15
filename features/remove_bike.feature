Feature:
  As an Admin
  To de-populate the database
  I want to remove a bike

Background:
  Given I am on /bike_remove

Scenario: User fills in required fields
  When I fill out the form with:
  | bike_bike_id | 45 |
  And I press "Delete"
  Then I should be on bike_list


Scenario: Reqired fields not filled
  When I press "Delete"
  Then I should see "Bike id not entered."


Scenario: User fills in required fields
  When I fill out the form with:
  | bike_bike_id | thisisafakeidandwillneverbeusedbyanyreasonableadmin |
  And I press "Delete"
  Then I should see "Bike not found."


