# frozen_string_literal: true

# This class defines the Board in the Tic Tac Toe Game
class Board
  attr_accessor :entries

  def initialize
    @entries = []
  end

  def print_divide_lines
    puts('---------')
  end

  def print_empty_entries
    puts('- | - | -')
  end

  def print_empty_board
    board_row_range = (0..4)
    board_row_range.each do |row|
      if row.even?
        print_empty_entries
      else
        print_divide_lines
      end
    end
  end
end
board = Board.new
board.print_empty_board
