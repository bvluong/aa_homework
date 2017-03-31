class Stack
  def initialize
    # create ivar to store stack here!
    @stack = []
  end

  def add(el)
    @stack << el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end
end

class Queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue.dup
  end

end

class Map

  def initialize
    @map = []
  end

  def assign(key, value)
    if include?(key)
      @map[key_array.find(key)] = [key,value]
    else
      @map << [key,value]
    end
  end

  def key_array
    @map.tranpose.first
  end

  def include?(key)
    key_array.include? key
  end

  def lookup(key)
    if include?(key)
      @map[key_array.find(key)][1]
    end
  end

  def remove(key)
    @map.delete(key, lookup(key)) if key_array.include? key
  end

  def show
    @map.dup
  end

end
