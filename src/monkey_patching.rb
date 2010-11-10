class Monkey
  def climb
    puts "Climbing Rope"
  end
end

class Monkey
  fail "swing already defined on monkey" if
    instance_methods.include?(:swing)

  def swing
    puts "Swinging on a Rope"
  end
end

class Monkey
  unless instance_methods.include?(:swing)
    def swing
      puts "Swinging on a Rope2"
    end
  end
end

Monkey.new.swing
