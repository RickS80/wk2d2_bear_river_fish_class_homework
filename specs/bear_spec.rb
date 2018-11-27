require("minitest/autorun")
require('minitest/rg')
require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi","Grizzly")
    @type = Bear.new("Yogi","Grizzly")
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_type
    assert_equal("Grizzly", @type.type)
  end


end
