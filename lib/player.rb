class Player
  attr_reader :name, :monthly_cost, :contract_length, :nickname
  def initialize(name, monthly_cost, contract_length)
    @name = name
    @monthly_cost = monthly_cost
    @contract_length = contract_length
    @nickname = nickname
  end

  def first_name
    @name.split(" ").first
  end

  def last_name
    @name.split(" ").last
  end

  def total_cost
    @contract_length * @monthly_cost
  end

  def set_nickname!(new_nickname)
    @name = new_nickname
  end
end