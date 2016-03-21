# RGraph

RGraph is an implementation of [Graph](https://en.wikipedia.org/wiki/Graph_(discrete_mathematics)) in Ruby and is still under heavy development so don't use it in any kind of production. Graph is internally represented with adjacency list.

## Some TODO's:
  - convert project to *gem*
  - implement adjacency matrix
  - implement MultiGraph
  - [Djikstra](https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm)
  - Path analysis

I've found some inspiration in the amazing [Python's NetworkX library](https://networkx.github.io).

## How to install
```sh
$ git clone https://github.com/warriorkitty/rgraph.git
$ cd rgraph
$ gem install rspec # for running tests
$ rspec # run tests
```

![RSPEC](http://s7.postimg.org/irb7df15n/Screen_Shot_2016_03_21_at_06_07_50.png)

## Implementation Details
Graph is represented with Vertex and EdgeSet classes.

vertex.rb
* represents a single Vertex (node) in Graph
* has *degree* information about itself

edge.rb
* represents a single Edge in Graph
* contains two vertices

edge_set.rb
* this is a set of edges
* simple methods such as *add*, *count*, *edge?*
* makes sure there are no duplicates
* changes a degree of a single vertex when adding it to edgeset

graph.rb
* represented with vertices and edgeset
* simple methods for checking *degree*, *adjacent?*

rspec/graph_spec.rb
* simple unit tests
* look at the file if you want to see simple usage