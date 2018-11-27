class Bear

attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
    @fish_in_river = [@fish1, @fish2, @fish3]

  end

  def eat(fish)
    @stomach << fish
  end

  def tummy_content
    return @stomach.length
  end

  def roar
    return "roar"
  end

end
