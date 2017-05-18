require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest

  test 'should get index' do
    get events_path
    assert_response :success
  end

  test 'should get show' do
    event = create(:event, :event_one)
    get events_path+"/#{event.id}"
    assert_response :success
  end

  test 'create route works correctly' do
    event = build(:event, :event_one)
    post events_path, params: {event:{name: event.name, date: event.date, description: event.description}}

    assert_equal 1,Event.all.count
  end

end
