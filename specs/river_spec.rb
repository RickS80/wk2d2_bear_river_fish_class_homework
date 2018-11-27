require("minitest/autorun")
require('minitest/rg')
require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class RiverTest < MiniTest::Test

  def setup
      @fish1 = Fish.new("John"),
      @fish2 = Fish.new("Paul"),
      @fish3 = Fish.new("Ringo"),
      @fish4 = Fish.new("George")

  end

  def test_river_has_name
    river = River.new("Nile")
    assert_equal("Nile", river.name)
  end

  # def test_river_fish_count
  #   river = River.new("Nile")
  #   assert_equal(4, river.fish_count(@fish_school))
  # end

end
