class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { Array.new }
    @player1 = name1
    @player2 = name2
    place_stones
  end

  def place_stones
    (0..size-1).step do |cup_idx|
      unless cup_idx == 6 || cup_idx == 13
        4.times { cups[cup_idx] << :stone }
      end
    end
  end

  def size
    @cups.size
  end

  def valid_move?(start_pos)
    unless start_pos.between?(1,6) || start_pos.between?(7,12)
      raise "Invalid starting cup"
    end
  end

  def make_move(start_pos, current_player_name)
    num_stones = cups[start_pos].size
    cups[start_pos] = []
    num_stones.times do
      start_pos = start_pos + 1
      start_pos = 0 if start_pos > 13
      if start_pos == 13 && @player1 == current_player_name
        start_pos = 0
        cups[start_pos] << :stone
      elsif start_pos == 6 && @player2 == current_player_name
        start_pos += 1
        cups[start_pos] << :stone
      else
        cups[start_pos] << :stone
      end
    end
    render
    next_turn(start_pos)
  end

  def switch?(pos,player)
    return true if pos.between?(0,5) && player == @player1
    return true if pos.between?(7,12) && player == @player2
    false
  end

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif cups[ending_cup_idx].count == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    player_1_empty? || player_2_empty?
  end

  def player_1_empty?
    cups[0..5].all? {|cup| cup.count == 0}
  end

  def player_2_empty?
    cups[7..12].all? {|cup| cup.count == 0}
  end

  def winner
    case cups[6] <=> cups[13]
    when -1
      @player2
    when 0
      :draw
    else
      @player1
    end
  end
end
