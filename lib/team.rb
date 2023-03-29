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

  def long_term_players
    @roster.select {|player| player.contract_length > 24}
  end

  def short_term_players
    @roster.select {|player| player.contract_length <= 24}
  end

  def total_value
    team_cost = []
    @roster.map do |player|
      team_cost << player.total_cost
    end
    team_cost.sum
  end

  def details
    {
     "total_value" => total_value,
     "player_count" => player_count
    }
  end

end