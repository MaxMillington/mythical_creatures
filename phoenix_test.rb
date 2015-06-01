require 'minitest/autorun'
require 'minitest/pride'
require_relative 'phoenix'

class PhoenixTest < Minitest::Test
  def test_it_has_a_name
    phoenix = Phoenix.new("Jeffrey")
    assert_equal "Jeffrey", phoenix.name
  end

  def test_it_has_an_age
    phoenix = Phoenix.new("Jeffrey")
    assert_equal 0, phoenix.age

  end

  def test_it_ages_at_birthday
    phoenix = Phoenix.new("Alexander")
    phoenix.cakeday
    assert_equal 1, phoenix.age
  end

  def test_it_ages_many_times
    phoenix = Phoenix.new("Fawkes")
    50.times do
      phoenix.cakeday
    end
    assert_equal 50, phoenix.age
  end

  def test_is_adult_after_150_years
    phoenix = Phoenix.new("Mephistophocles")

    149.times do
      phoenix.cakeday
    end

    refute phoenix.adult?

    2.times do
      phoenix.cakeday
    end

    assert phoenix.adult?
  end

  def test_its_alive_when_created
    phoenix = Phoenix.new("Steve")

    assert phoenix.alive?
  end

  def test_its_dead_when_killed
    phoenix = Phoenix.new("Chuck")
    phoenix.get_killed
    refute phoenix.alive?
  end

  def test_it_can_revive
    phoenix = Phoenix.new("Milt")
    phoenix.get_killed
    phoenix.revive
    assert phoenix.alive?
  end

  def test_it_can_only_revive_four_times
    phoenix = Phoenix.new("Bob")
    4.times do
      phoenix.get_killed
      phoenix.revive
    end

    phoenix.get_killed
    refute phoenix.alive?
    phoenix.revive
    refute phoenix.alive?
  end

  def test_it_cannot_be_killed_when_dead
    phoenix = Phoenix.new("Cornelius")
    phoenix.get_killed
    phoenix.get_killed
    assert "The phoenix is already dead."
  end

  def test_it_cannot_be_revived_when_alive
    phoenix = Phoenix.new("Silenus")
    phoenix.revive
    phoenix.revive
    assert "The phoenix is already alive."
  end

end