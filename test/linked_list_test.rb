require './lib/node'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < MiniTest::Test 

  def test_it_exists
    list = LinkedList.new 

    assert_instance_of LinkedList, list
  end 

  def test_it_has_attributes
    list = LinkedList.new

    assert_nil list.head
  end 

  def test_can_append_node_to_head 
    list = LinkedList.new 
    list.append("doop")

    assert_instance_of Node, list.head
    assert_nil list.head.next_node
  end 
  
  def test_can_count_how_many_are_in_list 
    list = LinkedList.new 

    assert_equal 0, list.count
    list.append("doop")
    assert_equal 1, list.count
  end 

  def test_can_print_data_from_head
    list = LinkedList.new 
    list.append("doop")

    assert_equal "doop", list.to_string
  end
end 