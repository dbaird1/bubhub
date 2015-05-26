Given /add test bike (\d+)/ do |id|
  bike = Bike.create!( bike_id: id.to_s)
end
