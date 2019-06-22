require './lib/node'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < MiniTest::Test 

  def test_it_exists
    list = LinkedList.new 

    assert_instance_of LinkedList, list
  end 

end 