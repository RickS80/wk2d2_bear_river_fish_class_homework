require("minitest/autorun")
require('minitest/rg')
require_relative("../fish")


class FishTest < MiniTest::Test

  def test_fish_has_name
    fish1 = Fish.new("Percy")
    assert_equal("Percy", fish1.name)
  end


end
