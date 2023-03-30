class Player
  attr_reader :first_name, :last_name, :monthly_cost, :contract_length, :nickname
  def initialize(name, monthly_cost, contract_length)
    @first_name = name.split.first
    @last_name = name.split.last
    @monthly_cost = monthly_cost
    @contract_length = contract_length
    @nickname = nickname
  end

  def total_cost
    @contract_length * @monthly_cost
  end

  def set_nickname!(new_nickname)
    @nickname = new_nickname
  end
end

