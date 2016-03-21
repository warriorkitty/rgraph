require_relative 'lib/graph'

nodes = %w( a b c d e f g h )
nodes = nodes.map { |node| Vertex.new(node) }

# create a complete graph => [n(n-1) / 2] number of edges
edges = EdgeSet.new
nodes.each do |v1|
  nodes.each do |v2|
    edges.add(Edge.new(v1, v2)) unless v1 == v2
  end
end

g = Graph.new(nodes, edges)

puts g.edges.count # 28
