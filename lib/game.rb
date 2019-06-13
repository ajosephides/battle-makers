class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
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

end