require 'test_helper'

class EventTest < ActiveSupport::TestCase

  test "empty event should not save" do
  	event = Event.new
  	assert_not event.save

  end

  test "fully defined event should save" do
  	milonga_type = DanceType.find_by_name("Milonga")
    assert_not milonga_type.nil?
  	toulouse_city = City.find_by_name("Toulouse")
    assert_not toulouse_city.nil?
  	event = Event.new(title: "Milonga del angel", description: "Very intimate milonga", price: "5 euros", start_time: 1.day.from_now,
      end_time: 26.hours.from_now, location: "La Maquina Tanguera", dance_type_id: milonga_type.id, city_id: toulouse_city.id)
  	assert event.save, event.errors.messages

  end

  test "date should be properly displayed in French" do

  	event = Event.create(:start_time => DateTime.strptime("06-04-2018", "%d-%m-%Y"))

  	assert_equal "ven. 6 avril 2018", event.date

  end

  test "date should have only one space, even when the date is double digit" do

  	event = Event.create(:start_time => DateTime.strptime("16-04-2018", "%d-%m-%Y"))

  	assert_equal "lun. 16 avril 2018", event.date

  end

end
