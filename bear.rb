class Bear

attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @tummy_content = []

  end

  def roar
    returns "roar"
  end 

end
