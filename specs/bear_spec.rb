require("minitest/autorun")
require('minitest/rg')
require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi","Grizzly")
    @fish1 = Fish.new("Wanda")
    @fish2 = Fish.new("Jaws")
    @fish3 = Fish.new("Fred")
    @river = River.new("Nile")


  end

  def test_bear_has_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_eat__one_fish
    @bear.eat(@fish1)
    assert_equal(1, @bear.tummy_content)
    # assert_equal(2, @river.fish_count)
  end

  def test_tummy_content__three_fish
    @bear.eat(@fish1)
    @bear.eat(@fish2)
    @bear.eat(@fish3)
    assert_equal(3, @bear.tummy_content)
    assert_equal(0, @river.fish_count)
  end

  def test_roar
    assert_equal("roar", @bear.roar)
  end

end
