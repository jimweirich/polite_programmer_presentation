require 'botwars/jim_bot'
require 'botwars/basic_robot_tests'

class JimBotTest < Test::Unit::TestCase
  include BasicRobotTests

  def robot
    @robot ||= JimBot.new
  end
end
