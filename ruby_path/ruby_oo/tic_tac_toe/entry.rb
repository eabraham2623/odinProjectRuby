# frozen_string_literal: true

# This class defines the entry object in a Tic Tac Toe Game
class Entry
  attr_accessor :position, :type

  def initialize(entry_type, position)
    self.type = entry_type
    self.position = position
  end

  def to_s
    "This Tic Tac Toe entry is #{type} at position #{position}"
  end
end

