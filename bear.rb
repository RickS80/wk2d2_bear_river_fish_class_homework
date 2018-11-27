class Bear

attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
    @fish_in_river = [@fish1, @fish2, @fish3]

  end

  def eat(fish)
    fish_in_river = [fish]
    @stomach << fish
    fish_in_river.pop
  end

  def tummy_content
    return @stomach.length
  end

  def roar
    return "roar"
  end

end
