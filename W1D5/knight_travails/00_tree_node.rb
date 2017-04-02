class PolyTreeNode

  def initialize(value)
    @value, @parent, @children = value, nil, []
  end

  def parent
    @parent
  end

  def children
    @children
  end

  def value
    @value
  end

  def add_child(child_node)
    child_node.parent = self
  end

  def remove_child(child_node)
    raise "Node is not a child" unless child_node.parent == self
    child_node.parent = nil
  end

  def dfs(target_value)
    return self if self.value == target_value

    self.children.each do |child|
      search_result = child.dfs(target_value)
      return search_result if search_result
    end

    nil
  end

  def bfs(target_value)
    queue = [self]
    until queue.empty?
      el = queue.shift
      return el if el.value == target_value
      el.children.each { |child| queue << child }
    end
    nil
  end

  def parent=(new_parent)
    @parent.children.delete(self) unless @parent.nil?
    @parent = new_parent
    @parent.children << self unless @parent.nil?
  end

end
