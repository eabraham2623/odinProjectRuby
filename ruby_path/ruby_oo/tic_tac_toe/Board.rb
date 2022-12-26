# frozen_string_literal: true

require_relative('entry')

# This class defines the Board in the Tic Tac Toe Game
class Board
  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def print_divide_lines
    puts('---------')
  end

  def print_empty_entries
    puts('- | - | -')
  end

  def add_entry(entry)
    type = entry.type
    position = entry.position
    if entries.key?(position)
      puts('Position Already Taken!')
    else
      entries[position] = type
    end
  end

  def print_entries(entries, column)
    true_column = column + 1
    if entries.key?(true_column)
      if true_column % 3 == 1
        print("#{entries[true_column]} |")
      elsif true_column % 3 == 2
        print(" #{entries[true_column]} |")
      else
        print(" #{entries[true_column]}\n")
      end
    elsif true_column % 3 == 1
      print('- |')
    elsif true_column % 3 == 2
      print(' - |')
    else
      print(" -\n")
    end
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

  def print_new_board
    board_range = (0..8)
    board_range.each do |cellIndex|
      if cellIndex == 2 || cellIndex == 5
        print_entries(entries, cellIndex)
        print_divide_lines
      else
        print_entries(entries, cellIndex)
      end
    end
  end
end
board = Board.new
board.print_empty_board

i = 1
while i <= 9
  puts("==============#{i}============")
  board.add_entry(Entry.new('X',i))
  puts(board.entries)
  board.print_new_board
  i+=1
end