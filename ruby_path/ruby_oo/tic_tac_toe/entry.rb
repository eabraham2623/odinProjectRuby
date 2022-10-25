# frozen_string_literal: true

# This class defines the entry object in a Tic Tac Toe Game
class Entry
  attr_accessor :position, :type, :tic_tac_toe_hash

  def initialize(entry_type, position)
    self.type = entry_type
    self.position = position
    self.tic_tac_toe_hash = { position: self.position, type: type }
  end

  def to_s
    "This Tic Tac Toe entry is #{type} at position #{position}"
  end
end

entry1 = Entry.new('X', 1)
puts(entry1.to_s)
puts(entry1.tic_tac_toe_hash)
