require './lib/node'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require 'pry'

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

  def test_can_append_multiple_new_nodes 
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal "deep", list.head.next_node.data
    assert_equal 2, list.count
    assert_equal "doop deep", list.to_string
  end 

  def test_can_add_to_begining_of_list_with_prepend
    list = LinkedList.new 
    list.append("deep")
    list.prepend("doop")

    assert_equal 2, list.count
    assert_equal "doop deep", list.to_string
  end
end 