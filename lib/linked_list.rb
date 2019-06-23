class LinkedList
  attr_reader :head,
              :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(new_node_data)
    node = Node.new(new_node_data)
    @count += 1
    if @head.nil?
      @head = node 
    else 
     @head.next_node = node
    end 
  end 

  def to_string
    current_node = @head
    array_of_words = []
    while current_node.next_node != nil 
      array_of_words << current_node.data
      current_node = current_node.next_node
    end 
    array_of_words << current_node.data
    array_of_words.join(" ")
  end

  def prepend(new_node_data)
    node = Node.new(new_node_data)
    @count += 1 
    node.next_node = @head 
    @head = node
  end 
  
  def insert(position, data)
    node_before = get_node_before(position)
    if !node_before.nil?
      node = Node.new(data)
      node.next_node = node_before.next_node
      node_before.next_node = node
    end
  end


  private 

  def get_node_before(position)
    node_before = @head
    position_count = 0
    until position_count == position - 1
      position_count += 1
      node_before = node_before.next_node
    end
    node_before 
  end 
end 