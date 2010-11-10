require 'stereo'

# Black Magic Woman
class BlackMagicStereo < Stereo
  def method_missing(name, *args)  # :nodoc:
    song = extract_song_name(name)
    if song
      system("open songs/#{song}.m4a")
    else
      super
    end
  end

  # Does the object respond to the named method.
  def respond_to?(name)
    extract_song_name(name)
  end

  private

  def extract_song_name(name)
    md = (name.to_s =~ /^play_(\w+)$/)
    md && md[1]
  end
end

if __FILE__ == $0
  stereo = BlackMagicStereo.new
  stereo.play_black_magic_woman   # THIS WORKS
  stereo.play("Magic Bus")        # THIS FAILS
end
