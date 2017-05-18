require 'test_helper'

class EventTest < ActiveSupport::TestCase

  test 'create valid event' do
    event = build(:event, :event_one)
    assert event.save
  end

  test 'event must have name' do
    event = build(:event, :event_without_name)
    assert_not event.save
  end

  test 'event must have date' do
    event = build(:event, :event_without_date)
    assert_not event.save
  end

  test 'uniqueness of name scope date' do
    same_date = DateTime.now
    create(:event, name: 'same_name', date: same_date)

    assert create(:event, name: 'different_name', date: same_date)
    assert_not (build(:event, name: 'same_name', date: same_date)).save
  end

end
