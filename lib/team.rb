class Team
  attr_reader :roster, :player_count
  def initialize(name, location)
    @name = name
    @location = location
    @roster = []
    @player_count = 0
  end

  def add_player(player)
    @roster << player
    @player_count += 1
  end
end