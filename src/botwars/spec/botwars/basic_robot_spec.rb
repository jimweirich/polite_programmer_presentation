require 'spec_helper'
require 'botwars/basic_robot'

shared_examples_for "a basic robot" do
  it "is created" do
    robot.should_not be_nil
  end

  let(:controller) {
    c = flexmock("controller")
    c.should_ignore_missing
    c
  }

  context "when starting the game" do
    it "handles start_game" do
      lambda {
        robot.start_game("R2D2", :red, controller)
      }.should_not raise_error
    end
  end

  context "when running the game" do
    before { robot.start_game("R2D2", :red, controller) }

    it "handles collision" do
      lambda {
        robot.collision(10)
      }.should_not raise_error
    end

    it "handles ticks" do
      lambda {
        robot.tick
      }.should_not raise_error
    end

    it "handles being dead" do
      lambda {
        robot.dead
      }.should_not raise_error
    end

    it "handles end of game" do
      lambda {
        robot.end_game
      }
    end
  end

  context "when dead" do
    before {
      controller.should_receive(:accel, :turn, :ping).never
      robot.start_game("R2D2", :red, controller)
      robot.dead
    }
    it "does nothing when handling tick" do
      robot.tick
    end
  end
end

