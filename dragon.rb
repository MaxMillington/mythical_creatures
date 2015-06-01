class Dragon
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @food = 0
  end

  def name
    @name
  end

  def color
    @color
  end

  def rider
    @rider
  end

  def hungry?
    if @food <= 2
      true
    else
      false
    end
  end

  def eat
    @food += 1
  end

end