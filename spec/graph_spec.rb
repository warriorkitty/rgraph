require_relative '../lib/graph'

RSpec.describe Graph do

  before(:each) do
    @nodes = %w[ a b c d e f g h ]
    @nodes = @nodes.map { |node| Vertex.new(node) }

    # create a complete graph => [n(n-1) / 2] number of edges
    @edges = EdgeSet.new
    @nodes.each do |v1|
      @nodes.each do |v2|
        if(v1 != v2)
          @edges.add(Edge.new(v1, v2))
        end
      end
    end
    @g = Graph.new(@nodes, @edges)
  end

  context 'should be created' do
    it 'with verticies and edges' do
      expect(@g.edges.count).to eq 28
    end
  end

  context 'should contain' do
    it 'vertex' do
      expect(@g.vertex?(Vertex.new('a'))).to be true
    end

    it 'edge' do
      expect(@g.edge?(Edge.new(@nodes[0], @nodes[1]))).to be true
    end
  end

  context 'should not contain' do
    it 'vertex' do
      expect(@g.vertex?(Vertex.new('abcd'))).to be false
    end

    it 'edge' do
      expect(@g.edge?(Edge.new(Vertex.new('a'), Vertex.new('a')))).to be false
    end
  end

  it 'should have adjacent vertices' do
    expect(@g.adjacent?(Vertex.new('a'), Vertex.new('b'))).to be true
  end

  it 'should not have adjacent vertices' do
    expect(@g.adjacent?(Vertex.new('a'), Vertex.new('aa'))).to be false
  end

  it 'should have degree' do
    expect(@g.degree).to eq 56
  end

  it 'should have min_degree' do
    expect(@g.min_degree).to eq 7
  end

  it 'should have max_degree' do
    expect(@g.max_degree).to eq 7
  end

  it 'get adjacency matrix' do
    expect(@g.adjacency_matrix).to eq 0
  end
end
