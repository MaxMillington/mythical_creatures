class Werewolf

  attr_reader(:name, :location)

  def initialize(name, location = "London")
    @name = name
    @location = location
    @changes = 0
  end

  # def location
  #   @location
  # end

  def human?
    if @changes.odd?
      false
    else
      true
    end
  end

  def respond_to?(something)
    :change!
  end

  def werewolf?
    if @changes.odd?
      true
    else
      false
      end
  end

  def change!
    @changes += 1
  end



end