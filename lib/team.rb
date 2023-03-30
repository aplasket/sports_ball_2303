class Team
  attr_reader :name, :location, :roster
  def initialize(name, location)
    @name = name
    @location = location
    @roster = []
  end

  def player_count 
    @roster.length
  end

  def add_player(player)
    @roster << player
  end

  def long_term_players
    @roster.select {|player| player.contract_length > 24}
  end

  def short_term_players
    stp = @roster.select {|player| player.contract_length <= 24}
    stp.sort_by {|player| player.contract_length} 
  end

  def total_value
    # team_cost = @roster.map do |player|
    #   player.total_cost
    # end.sum
    @roster.sum {|player| player.total_cost}
  end

  def details
    {
     "total_value" => total_value,
     "player_count" => player_count
    }
  end

  # def average_cost_of_player
  #   average = (total_value / player_count).to_s
  #   nums_arr = []
  #   nums_arr << ("$" + average.to_s).chars.reverse.each_slice(3)
    
  # end
end