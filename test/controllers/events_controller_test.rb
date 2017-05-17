require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest

  test 'should get index' do
    get events_path
    assert_response :success
  end

  test 'should get show' do
    event = Event.create!(name:'name', date:DateTime.now)
    get events_path, params:{id: event.id}
    assert_response :success
  end

end
