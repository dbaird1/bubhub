Feature:
  As an Admin
  To alter the bike table in  the database
  I want to edit a bike

Background:
  Given I am on /bike_edit


Scenario: required feilds not filled
  When I fill out the form with:
  | bike_bike_height | 56 |
  And I press "Update"
  Then I should see "Please fill in all fields marked with a *."

Scenario: bike doesn't exist
  When I fill out the form with:
  | bike_bike_id | thisistheidofabikenotinthedatabaseplsdontusethisstring |
  And I press "Update"
  Then I should see "Bike not found."

Scenario: successful edit
  When I fill out the forum with:
  | bike_bike_id | 45 |
  And I press "Update"
  Then I should be on /bike_list
