class LinkedList
  attr_reader :head

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    @head = Node.new(value, @head)
  end

  def prepend(value)
    tmp = @head
    while tmp.next_node != nil
      tmp = tmp.next_node
    end
    tmp.next_node = Node.new(value)
  end

  def size
    counter = 0
    tmp = @head
    while tmp != nil
      counter += 1
      tmp = tmp.next_node
    end
    counter
  end

  def tail
    @tail = @head unless @head.nil?
    return @tail if @tail.nil?
    while @tail.next_node != nil
      @tail = @tail.next_node
    end
    @tail
  end

  def at(index)
    counter = 0
    tmp = @head
    while tmp != nil
      return tmp if counter == index
      tmp = tmp.next_node
      counter += 1
    end
    nil
  end

  def to_s
    str = ""
    tmp = @head
    while tmp != nil
      str = str + "( #{tmp.value} ) -> "
      tmp = tmp.next_node
    end
    str += "nil"
    str
  end
end

class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

linked_list = LinkedList.new
puts "The list"
p linked_list
puts "String representation of the list:"
p linked_list.to_s
puts "List's size:"
p linked_list.size
puts "Head of the list:"
p linked_list.head
puts "Tail of the list:"
p linked_list.tail
puts "#" * 50
5.times { |i| linked_list.append("data#{i}") }
puts "The list"
p linked_list
puts "String representation of the list:"
p linked_list.to_s
puts "List's size:"
p linked_list.size
puts "Head of the list:"
p linked_list.head
puts "Tail of the list:"
p linked_list.tail
puts "#" * 50
5.times { |i| linked_list.prepend("prepended_data#{i}") }
puts "The list"
p linked_list
puts "String representation of the list:"
p linked_list.to_s
puts "List's size:"
p linked_list.size
puts "Head of the list:"
p linked_list.head
puts "Tail of the list:"
p linked_list.tail
puts "Element at index 3:"
p linked_list.at(3)
puts "Element at index 9:"
p linked_list.at(9)
puts "Element at index 0:"
p linked_list.at(0)
puts "Element at index 30:"
p linked_list.at(30)
puts "#" * 50
