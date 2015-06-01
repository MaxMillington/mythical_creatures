class Wizard

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
  end

  def name
    @name
  end

  def bearded?
    @bearded
  end

  def incantation(special_words)
    "sudo " + special_words
  end
end