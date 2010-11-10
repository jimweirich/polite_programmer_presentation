class Parent
  def foo(sym, *args, &block)
    yield(sym, *args)
  end
end

class Child < Parent
  def foo(sym, *args)
    super
  end
end


c = Child.new
c.foo(:a, 1, 2, 3) { |sym, *args| puts "#{sym}(#{args.map{|x| x.inspect}.join(', ')})" }
