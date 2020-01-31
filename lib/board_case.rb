class BoardCase
  attr_accessor :value, :id

  def initialize (get_value = " ", specific_id)
    @value = get_value
    @id = specific_id
  end

  def show_id
    return self.id
  end

end
