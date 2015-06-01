class Centaur

  attr_reader(:name, :breed)

  def initialize(name, breed)
    @name = name
    @breed = breed
    @crank_factor = 0
    @lay_down_factor = 0
  end

  def shoot
    @crank_factor += 1
    if cranky? == true
      "NO!"
    elsif
      laying? == true
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    @crank_factor += 1
    if cranky? == true
      "NO!"
    elsif laying? == true
      "NO!"
    else
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    if @crank_factor <= 2
      false
    else
      true
    end
  end

  def standing?
    if @lay_down_factor.even?
      true
    else
      false
    end
  end

  def stand_up
    @lay_down_factor -= 1
  end

  def sleep
    if standing? == true
      "NO!"
    else
      @crank_factor *= 0
      "I love to sleep"
    end
  end

  def lay_down
    @lay_down_factor += 1
  end

  def laying?
    if @lay_down_factor.odd?
      true
    else
      false
    end
  end


end