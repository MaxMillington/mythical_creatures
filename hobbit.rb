class Hobbit

  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
  end

  def name
    @name
  end

  def disposition
      @disposition
  end


  def age
    @age
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    if @age <= 32
      false
    else
      true
    end
  end

end