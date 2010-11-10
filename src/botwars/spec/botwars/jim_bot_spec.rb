require 'spec_helper'
require 'botwars/jim_bot'
require 'botwars/basic_robot_spec'

describe JimBot do
  it_should_behave_like "a basic robot"

  let(:robot) { JimBot.new }
end
