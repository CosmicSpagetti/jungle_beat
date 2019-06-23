require './lib/node'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require 'pry'
require './lib/jungle_beat'

class JungleBeatTest < MiniTest::Test 

  def test_it_exists
    jungle = JungleBeat.new

    assert_instance_of JungleBeat, jungle 
  end

  def test_it_has_attributes
    jb = JungleBeat.new 

    assert_instance_of LinkedList, jb.list
    assert_nil jb.list.head
  end

  def test_can_append_a_sentence_and_each_word_becomes_one_node
    jb = JungleBeat.new
    jb.append("deep doo ditt")

    assert_equal "deep", jb.list.head.data
    assert_equal "doo", jb.list.head.next_node.data
  end
  
  def test_can_count_all_nodes
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")

    assert_equal 6, jb.count
  end
end 