require './lib/node'
require 'minitest/autorun'
require 'minitest/pride'


class NodeTest < Minitest::Test
  def test_it_exists
    node = Node.new("Plop")

    assert_instance_of Node, node
  end 

  def test_it_has_attributes
    node = Node.new("Plop")

    assert_equal "Plop", node.data
  end
  
  def test_can_go_to_next_node
    node = Node.new("Plop")
    
    assert_nil node.next_node
  end 
end
