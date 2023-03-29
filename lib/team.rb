class Team
  attr_reader :roster
  def initialize(name, location)
    @name = name
    @location = location
    @roster = []
  end
end