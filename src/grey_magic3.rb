require 'black_magic'

module GreyMagic
  def method_missing(sym, *args, &block)
    if sym.to_s =~ /^show_(\w+)$/
      system("open videos/#{$1}.mpg")
    else
      super
    end
  end

  def respond_to?(sym)
    sym.to_s =~ /^show_/ || super
  end
end

class BlackMagicStereo
  include GreyMagic
end

if __FILE__ == $0
  stereo = BlackMagicStereo.new
  stereo.show_return_of_the_king     # WORKS
  stereo.play_earendil_was_a_mariner # FAILS
end
