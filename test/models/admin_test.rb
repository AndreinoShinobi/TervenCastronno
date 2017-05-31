require 'test_helper'

class AdminTest < ActiveSupport::TestCase

  def setup
    @admin = Admin.new(name: 'Example User', password: 'password')
  end

  test 'valid admin' do
    assert @admin.valid?
  end

  test 'password should be present' do
    @admin.password = ' ' * 6
    assert_not @admin.valid?
  end

  test 'password should have a minimum length' do
    @admin.password = 'a' * 5
    assert_not @admin.valid?
  end
end
