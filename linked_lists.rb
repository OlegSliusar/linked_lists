class LinkedList

  def initialize
    @head = Node.new(nil, nil)
  end

  def append(value)
    @head = Node.new(value, @head)
  end
end

class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end
end

linked_list = LinkedList.new
linked_list.append("data")
linked_list.append("data1")
linked_list.append("data2")
linked_list.append("data3")
linked_list.append("data4")
p linked_list
