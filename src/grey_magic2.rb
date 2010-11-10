require 'black_magic'

class BlackMagicStereo
  alias method_missing_without_grey_magic method_missing
  def method_missing(sym, *args, &block)
    if sym.to_s =~ /^show_(\w+)$/
      system("open videos/#{$1}.mpg")
    else
      method_missing_without_grey_magic(sym, *args, &block)
    end
  end

  def respond_to?(sym)
    sym.to_s =~ /^show_/ || super
  end
end

if __FILE__ == $0
  stereo = BlackMagicStereo.new
  stereo.show_return_of_the_king     # WORKS
  stereo.play_earendil_was_a_mariner # FAILS
end
