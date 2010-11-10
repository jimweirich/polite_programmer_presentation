require 'stereo'

class BlackMagicStereo < Stereo
  def method_missing(name, *args)
    if name.to_s =~ /^play_(\w+)$/
      system("open songs/#{$1}.m4a")
    else
      super
    end
  end

  def respond_to?(name)
    name.to_s =~ /^play_/ || super
  end
end

if __FILE__ == $0
  stereo = BlackMagicStereo.new
  stereo.play_black_magic_woman   # THIS WORKS
  stereo.play("Magic Bus")        # THIS FAILS
end
