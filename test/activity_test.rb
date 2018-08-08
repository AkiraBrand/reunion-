require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def setup
    @hash = {"Susi"=> 0, "Dan"=> 5, "Jordan"=> 30}
  end

  def test_it_exists
    activity = Activity.new(name, @hash)
    assert_instance_of Activity, activity
  end

  def test_it_has_a_name
    activity = Activity.new("golf", @hash)
    assert_equal "golf", activity.name
  end

 def test_it_has_participants
   activity = Activity.new("golf", @hash)
   assert_equal ["Susi", "Dan", "Jordan"], activity.participants.keys
 end

def test_you_can_add_participants
  activity = Activity.new("golf", @hash)
  assert_equal 3, activity.participants.keys.length
  activity.add_person("John", 20)
  assert_equal 20, activity.participants["John"]
  assert_equal 4, activity.participants.keys.length
  assert_equal "John", activity.participants.keys.pop
end

end
