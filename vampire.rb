class Vampire

  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
    @drinks = 0
  end

  def name
    @name
  end

  def pet
    @pet
  end

  def thirsty?
   if @drinks == 0
     true
   else
     false
   end
  end

  def drink
    @drinks += 1
  end

end