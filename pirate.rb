class Pirate

  def initialize(name, job = "Scallywag")
    @job = job
    @name = name
    @heinous_actions = 0
  end

  def name
    @name
  end

  def job
    @job
  end

  def cursed?
    if @heinous_actions <= 2
      false
    else
      true
    end
  end

  def commit_heinous_act
    @heinous_actions += 1
  end

end