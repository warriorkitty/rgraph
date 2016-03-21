require_relative 'vertex'
require_relative 'edge'
require_relative 'edge_set'

require 'matrix'

# Graph implementation in Ruby
class Graph
  attr_reader :vertices, :edges
  def initialize(vertices, edges = EdgeSet.new)
    @vertices = vertices
    @edges = edges
  end

  def vertex?(v)
    @vertices.any? { |vertex| vertex == v }
  end

  def edge?(e)
    @edges.edge?(e)
  end

  def adjacent?(v1, v2)
    e = Edge.new(v1, v2)
    @edges.edges.any? { |edge| edge == e }
  end

  def degree
    # Handshaking lemma (https://en.wikipedia.org/wiki/Handshaking_lemma)
    @edges.count * 2
  end

  # min degree
  def min_degree
    @vertices.map { |v| v.degree }.min
  end

  # max degree
  def max_degree
    @vertices.map { |v| v.degree }.max
  end
end
