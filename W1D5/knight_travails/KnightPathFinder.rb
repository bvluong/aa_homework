require_relative '00_tree_node.rb'

class KnightPathFinder

  def initialize(pos)
    @pos = pos
    @visited_positions = [@pos]
    build_move_tree
  end

  attr_accessor :pos, :visited_positions

  def build_move_tree

    cur_node = [pos]
    until visited_positions.length >= 64
    new_move_positions(cur_node.shift).each do |x|
      cur_node << x



  end

  def valid_positions(pos)
    row, col = pos
    new_moves = []
    possible_moves.each do |move|
      pos = [(row + move[0]), (col + move[1])]
      new_moves << pos if valid_move?(pos)
    end
    new_moves

  end

  def new_move_positions(pos)
    new = valid_positions(pos).reject {|new_pos| visited_positions.include?(new_pos)}
    new.each {|new_pos| visited_positions << new_pos}
  end

  def find_path(end_pos)

  end

  def trace_path_back(end_pos)

  end

  def valid_move?(move)
    move.all? { | idx | idx > 0 && idx < 8 }
  end

  def create_node(place)
    PolyTreeNode.new(place)
  end

  def possible_moves
    possible_moves = [  ]

    [-2,2].each do |idx1|
      [-1,1].each do |idx2|
        possible_moves << [idx1, idx2]
        possible_moves << [idx2, idx1]
        end
      end
      possible_moves
  end

end

if __FILE__ == $PROGRAM_NAME
  start = KnightPathFinder.new([0,0])
  # start.find_path([7,6])
end
