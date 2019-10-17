
class Board
  attr_accessor :board
############################################################
#TO DO :
   #Quand la classe s'initialize,
   #elle doit créer 9 instances BoardCases
   #Ces instances sont rangées dans un array
   #qui est l'attr_accessor de la classe
  def initialize()
    # On remplit le board de 9 cases vides
    @board = []
    9.times{ @board.push(BoardCase.new())}
  end
#############################################################
#une méthode qui : Mise en forme du tableau de jeu
  def play_turn
    list = []
    @board.each{ |i| list.push(i.case_value)}
    "   1 2 3\n   - - -\nA |%s|%s|%s|\nB |%s|%s|%s|\nC |%s|%s|%s|\n   - - -\n" % list

  end
#########################################################



  # On positionne le symbole dans l'emplacement 'place'
  # Comme on place toutes les positions dans un même array,

  def  victory (symbol, place)
    place.split('')
    index = 0
    add =0
    if place[0] == 'B'
      add = 3
    elsif place[0] == 'C'
      add= 6
    else
      add= 0
    end
    index = place[1].to_i-1+ add
    @board[index].case_value = symbol
  end
end
