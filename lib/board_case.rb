class BoardCase
  attr_accessor :value, :id
  #@value = ""
  @@user_count = 0


  def initialize (get_value = " ", specific_id)
    @value = get_value
    @id = specific_id
    @@user_count = @@user_count + 1
  end

  def show_id
    return self.id
  end

end
