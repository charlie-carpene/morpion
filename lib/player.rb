class Player
  attr_reader :name, :value

  def initialize(get_name, get_value)
    @name = get_name
    @value = get_value
  end

  def show_player_name
    return self.name
  end

  def show_player_value
    return self.value
  end
end
