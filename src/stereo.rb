require 'delegate'
require 'juke_box'

class Stereo < Delegator
  def initialize
    @real_stereo = JukeBox.new
  end
  def __getobj__
    @real_stereo
  end
end
