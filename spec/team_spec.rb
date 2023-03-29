require './lib/player'
require './lib/team'

RSpec.describe Team do
  it 'exists'do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team).to be_a Team
  end

  it 'has a roster' do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team.roster).to eq([])
  end

  it 'has a number of players' do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team.player_count).to eq(0)
  end
end