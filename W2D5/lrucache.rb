class LRUCache
  def initialize(size)
    @cache = []
    @size = size
  end

  def count
    @cache.size
    # returns number of elements currently in cache
  end

  def add(el)
    if @cache.include?(el)
      @cache.delete(el)
    elsif count > @size
      @cache.shift
    end
    @cache << el
  end

  def show
    puts @cache
  end

  private
  # helper methods go here!

end
