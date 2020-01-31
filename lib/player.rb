class Player
  attr_reader :name, :value

  def initialize(get_name, get_value)
    @name = get_name
    @value = get_value
  end

  def show_player_name #actually not used since .name works the same way
    return self.name
  end

  def show_player_value #actually not used since .value works the same way
    return self.value
  end
end
