require_relative 'vertex'

# edge
class Edge
  def initialize(v1, v2)
    @v1 = v1
    @v2 = v2
  end

  def vertices
    [@v1, @v2]
  end

  def ==(e)
    v1, v2 = e.vertices
    @v1 == v1 && @v2 == v2 || @v1 == v2 && @v2 == v1
  end
end
