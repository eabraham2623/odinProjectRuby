class Board
    attr_reader :size
    def initialize(size)
        @size = size
    end
    
    def printBoard()
        boardRows = (0..self.size-1)
        boardColumns = boardRows
        lastColumn = self.size - 1
        boardRows.each do |row|
            boardColumns.each do |column|
                if column == lastColumn
                    print("_")
                else
                    print("_|")
                end
            end
            puts("")
        end
    end
end
board = Board.new(3)
board.printBoard()