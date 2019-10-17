
class BoardCase
    #TO DO : la classe a 1 attr_accessor,
    #sa valeur en string (X, O, ou vide),

  attr_accessor :case_value
  # On crée une variable pour y stocker le X et O
  def initialize(symbol =" ")
    @case_value = symbol
  end
end
