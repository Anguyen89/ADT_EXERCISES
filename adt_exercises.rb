class Stack
  def initialize
    @ivar = []
  end

  def add(*el)
    @ivar.unshift(el)
  end

  def remove
    @ivar.pop
  end

  def show
    @ivar
  end
end


class Queue

  def initialize
    @ivar = []
  end

  def enqueue(*el)
    @ivar.push(el)
  end

  def dequeue
    @ivar.shift
  end

  def show
    @ivar
  end
end

class Array

  def deep_dup
    output = []
    self.each do |el|
      if el.is_a?(Array)
        self.deep_dup
      else
        output << el
      end
    end
    output
  end
end


class Map

  def initialize
    @map = []
  end

  def assign(key, value)
    pair_index = @map.index{|pair| pair[key] == value}
    pair_index ? @map[pair_index][1] = value : @map.push([key, value])
  end

  def lookup(key)
    @map.each {|pair| return pair[1] if pair[0] == key }
    nil
  end

  def remove(key)
    @map.reject{|pair| pair[0] == key}
    nil
  end

  def show
    @map.deep_dup
  end



end
