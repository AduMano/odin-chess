# frozen_string_literal: true

require_relative('./pieces/bishop')
require_relative('./pieces/king')
require_relative('./pieces/knight')
require_relative('./pieces/pawn')
require_relative('./pieces/queen')
require_relative('./pieces/rook')

# Board Class
class Board
  attr_reader :board

  def initialize
    @board = Array.new(8) { Array.new(8) }
    @coordinates = {
      'A' => 0, 'B' => 1, 'C' => 2, 'D' => 3, 'E' => 4, 'F' => 5, 'G' => 6, 'H' => 7,
      '1' => 7, '2' => 6, '3' => 5, '4' => 4, '5' => 3, '6' => 2, '7' => 1, '8' => 0
    }
  end

  def board_setup
    @board = Array.new(8) { Array.new(8) }
    setup_black_pieces
    setup_white_pieces
  end

  def render_board(counter = 8)
    puts '  * | A | B | C | D | E | F | G | H |'.colorize(:yellow)

    @board.each do |row|
      puts '+———'.colorize(:green) + (counter.eql?(8) ? '+===+===+===+===+===+===+===+===+' : '+---+---+---+---+---+---+---+---+')

      print "  #{counter.to_s.colorize(:green)} "

      row.each do |cell|
        print cell.instance_of?(NilClass) ? '|   ' : "| #{cell.symbol.colorize(cell.color)} "
      end

      counter -= 1
      puts '|'
    end

    puts "#{'+==='.colorize(:green)}+===+===+===+===+===+===+===+===+"
  end

  private

  def setup_black_pieces
    @board[0][0] = Rook.new(1)
    @board[0][1] = Knight.new(1)
    @board[0][2] = Bishop.new(1)
    @board[0][3] = King.new(1)
    @board[0][4] = Queen.new(1)
    @board[0][5] = Bishop.new(1)
    @board[0][6] = Knight.new(1)
    @board[0][7] = Rook.new(1)

    8.times { |index| @board[1][index] = Pawn.new(1) }
  end

  def setup_white_pieces
    @board[7][0] = Rook.new(0)
    @board[7][1] = Knight.new(0)
    @board[7][2] = Bishop.new(0)
    @board[7][3] = King.new(0)
    @board[7][4] = Queen.new(0)
    @board[7][5] = Bishop.new(0)
    @board[7][6] = Knight.new(0)
    @board[7][7] = Rook.new(0)

    8.times { |index| @board[6][index] = Pawn.new(0) }
  end
end
