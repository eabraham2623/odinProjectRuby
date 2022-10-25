class Board
    attr_accessor :entries
    def initialize()
        @entries = []
    end
    
    def printDivideLines()
        puts('---------')
    end

    def printEmptyEntries()
        puts('- | - | -')
    end
    def printEmptyBoard()
        boardRowRange = (0..4)
        boardRowRange.each do | row |
            if row % 2 == 0
                printEmptyEntries()
            else
                printDivideLines()
            end
        end
    end
end
board = Board.new()
board.printEmptyBoard()
