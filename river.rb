class River

attr_reader :name

  def initialize(name)
    @name = name
    @fish_in_river = []
  end

  def increment_fish(fish)
    @fish_in_river << fish
  end

  def fish_count
    @fish_in_river.count
  end

end
