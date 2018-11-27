require("minitest/autorun")
require('minitest/rg')
require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class RiverTest < MiniTest::Test

  def setup
      @fish_school = [
        Fish.new("John"),
        Fish.new("Paul"),
        Fish.new("Ringo"),
        Fish.new("George")
      ]
  end

  def test_river_has_name
    river = River.new("Nile", [])
    assert_equal("Nile", river.name)
  end

  def test_river_fish_count
    river = River.new("Nile", @fish_school)
    assert_equal(4, @fish_school.count)
  end

end
