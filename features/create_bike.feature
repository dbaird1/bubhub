Feature:
  As an Admin
  To populate the database
  I want to add a bike

Background:
  Given I am on /bike_management

Scenario: User fills in required fields
  When I fill out the form with:
  | bike_bike_id | 45 |
  | bike_bike_serial_num | 1234-456-789-1337 |
  | bike_bike_height | 44 |
  And I press "Create"
  Then I should be on bike_list
  

Scenario: Reqired fields not filled
  When I fill out the form with:
  | bike_bike_description | gold frame, gold chain, gold errythang |
  And I press "Create"
  Then I should see "Please fill in all fields marked"
