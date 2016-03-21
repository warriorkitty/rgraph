# vertex
class Vertex
  attr_accessor :degree

  def initialize(name)
    @name = name
    @degree = 0
  end

  def name
    @name
  end

  def ==(v)
    @name == v.name
  end
end
