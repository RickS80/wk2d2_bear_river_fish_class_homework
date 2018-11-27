require("minitest/autorun")
require('minitest/rg')
require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class RiverTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi","Grizzly")
    @river = River.new("Nile")
    @fish1 = Fish.new("Wanda")
    @fish2 = Fish.new("Jaws")
    @fish3 = Fish.new("Fred")

  end

  def test_river_has_name
    assert_equal("Nile", @river.name)
  end


    def test_fish_count
      @river.increment_fish(@fish1)
      @river.increment_fish(@fish2)
      @river.increment_fish(@fish3)
      assert_equal(3, @river.fish_count)
    end



end
