class Game

  attr_reader :turn
  
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = player1.name
  end

  def attack(player)
    player.receive_damage
  end

  def player1
    @player1
  end

  def player2
    @player2
  end

  def next_turn(player)
    @turn = player.name
  end


end