require 'test/unit'
require 'flexmock/test_unit'

module BasicRobotTests
  def controller
    @controller ||= flexmock("controller").tap { |c|
      c.should_ignore_missing
    }
  end

  def test_created
    assert_not_nil robot
  end

  def test_can_start_game
    assert_nothing_raised(Exception) do
      robot.start_game("R2D2", :red, controller)
    end
  end

  def start_game
    robot.start_game("R2D2", :red, controller)
  end

  def test_can_handle_collision
    start_game
    assert_nothing_raised(Exception) do
      robot.collision(10)
    end
  end

  def test_can_handle_tick
    start_game
    assert_nothing_raised(Exception) do
      robot.tick
    end
  end

  def test_can_handle_dead
    start_game
    assert_nothing_raised(Exception) do
      robot.dead
    end
  end

  def test_can_handle_end_game
    start_game
    assert_nothing_raised(Exception) do
      robot.end_game
    end
  end

  def test_does_nothing_when_dead
    controller.should_receive(:accel, :turn, :ping).never
    start_game
    robot.dead

    robot.tick
  end

end
