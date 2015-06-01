class Phoenix

  attr_reader(:name, :age)

  def initialize(name, age = 0)
    @name = name
    @age = age
    @change_count = 0
    @kill_count = 0
  end

  def cakeday
    @age += 1
  end

  def adult?
    if @age < 150
      false
    else
      true
    end
  end

  def alive?
    if @change_count.even? &&@change_count <= 8
      true
    end
  end

def get_killed
  @change_count +=1
  if @kill_count > 0
    "The phoenix is already dead."
  else
    @kill_count += 1
  end
end

  def revive
    @change_count +=1
    if @kill_count == 0
      "The phoenix is already alive."
    else
      @kill_count -= 1
    end
  end



end