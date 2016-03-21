# edge set implementation
class EdgeSet
  attr_reader :edges
  def initialize()
    @edges = []
  end

  def add(e)
    has_edge = @edges.any? { |edge| edge == e }
    unless has_edge
      @edges.push(e)
      v1, v2 = e.vertices
      v1.degree += 1
      v2.degree += 1
    end
  end

  def count
    @edges.length
  end

  def edge?(e)
    @edges.any? { |edge| edge == e }
  end
end