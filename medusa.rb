class Medusa

  attr_reader(:name)

  def initialize(name)
    @name = name
    @statue_names = []
  end

  # def name
  #   @name
  # end

  def respond_to?(manner)
    manner
  end

  def statues
    @statue_names
  end

  def stare(victim)
    @statue_names << victim
    victim.lithograph
  end

end


class Person

  attr_reader(:name)

  def initialize(name)
    @name = name
    @is_a_lithograph = false
  end

  # def name
  #   @name
  # end

  def stoned?
    @is_a_lithograph
  end

  def lithograph
    @is_a_lithograph = true
  end

end