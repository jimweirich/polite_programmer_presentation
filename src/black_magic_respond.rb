module BlackMagic
  def method_missing(sym, *args)
    if sym.to_s =~ /^play_(\w+)$/
      system "open #{$1}.m4a"
    end
  end

  def respond_to?(sym)
    sym.to_s =~ /^play_\w+$/ || super
  end
end


class ActRecord
  def method_missing(sym, *args, &block)
    if sym.to_s =~ /^find_(\w+)$/
      puts "finding '#{$1}'"
    else
      super
    end
  end
end

class SomeModel < ActRecord
  include BlackMagic
end



m = SomeModel.new
p m.respond_to?(:play_black_magic_woman)
p m.respond_to?(:xyzzy)
#m.play_black_magic_woman
