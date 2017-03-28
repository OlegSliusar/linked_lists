class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(value)
    @head = Node.new(value, @head)
  end

  def prepend(value)
    if @head.nil?
      self.append(value)
    else
      tmp = @head
      while tmp.next_node != nil
        tmp = tmp.next_node
      end
      tmp.next_node = Node.new(value)
    end
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
    return nil if @head.nil?
    tail = @head
    while tail.next_node != nil
      tail = tail.next_node
    end
    tail
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

  def pop
    return nil if @head.nil?
    tmp = @head
    unless tmp.next_node.nil?
      while tmp.next_node.next_node != nil
        tmp = tmp.next_node
      end
      tmp2 = tmp.next_node
      tmp.next_node = nil
      tmp2
    else
      @head = nil
    end
  end

  def contains?(data)
    tmp = @head
    while tmp != nil
      return true if tmp.value == data
      tmp = tmp.next_node
    end
    false
  end

  def find(data)
    tmp = @head
    counter = 0
    while tmp != nil
      return counter if tmp.value == data
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

  def insert(index, obj)
    return nil if @head.nil?
    if index == 0
      append(obj)
      return
    end
    prev = nil
    cur = @head
    counter = 0
    while cur != nil && counter != index
      prev = cur
      cur = cur.next_node
      counter += 1
    end
    prev.next_node = Node.new(obj, cur) if cur != nil
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
puts "\nString representation of the list:"
p linked_list.to_s
puts "\nList's size:"
p linked_list.size
puts "\nHead of the list:"
p linked_list.head
puts "\nTail of the list:"
p linked_list.tail
puts "\nDelete the last element from the list:"
p linked_list.pop
linked_list.insert(0, "never_inserted_at_0")
puts "\nString representation of the list:"
p linked_list.to_s
puts "\n"
puts "\nDoes the list contains nil ? (should return false)"
p linked_list.contains?(nil)
puts "\nDoes the list contains 'data2' ? (should return false)"
p linked_list.contains?("data2")
puts "\nDoes the list contains 'fucking_shit' ? (should return false)"
p linked_list.contains?("fucking_shit")
p linked_list
puts "#" * 50
linked_list.prepend("one_element")
puts "\nThe list"
p linked_list
puts "\nTail of the list:"
p linked_list.tail
linked_list.insert(0, "inserted_at_0")
puts "\nString representation of the list:"
p linked_list.to_s
puts "\nDelete the last element from the list:"
p linked_list.pop
puts "\nString representation of the list:"
p linked_list.to_s
puts "\nDoes the list contains nil ? (should return false)"
p linked_list.contains?(nil)
puts "\nDoes the list contains 'data2' ? (should return false)"
p linked_list.contains?("data2")
puts "\nDoes the list contains 'fucking_shit' ? (should return false)"
p linked_list.contains?("fucking_shit")
puts "\nThe list"
p linked_list
puts "#" * 50
linked_list.prepend("one_element")
linked_list.prepend("second_element")
puts "\nThe list"
p linked_list
puts "\nTail of the list:"
p linked_list.tail
puts "\nString representation of the list:"
p linked_list.to_s
puts "\nDelete the last element from the list:"
p linked_list.pop
puts "\nString representation of the list:"
p linked_list.to_s
puts "\nDoes the list contains nil ? (should return false)"
p linked_list.contains?(nil)
puts "\nDoes the list contains 'data2' ? (should return false)"
p linked_list.contains?("data2")
puts "\nDoes the list contains 'fucking_shit' ? (should return false)"
p linked_list.contains?("fucking_shit")
puts "\nThe list"
p linked_list
puts "#" * 50
5.times { |i| linked_list.append("data#{i}") }
puts "\nThe list"
p linked_list
puts "\nString representation of the list:"
p linked_list.to_s
puts "\nList's size:"
p linked_list.size
puts "\nHead of the list:"
p linked_list.head
puts "\nTail of the list:"
p linked_list.tail
puts "\nDelete the last element from the list:"
p linked_list.pop
puts "\nString representation of the list:"
p linked_list.to_s
puts "\n"
puts "\nDoes the list contains nil ? (should return false)"
p linked_list.contains?(nil)
puts "\nDoes the list contains 'data2' ? (should return true)"
p linked_list.contains?("data2")
puts "\nDoes the list contains 'fucking_shit' ? (should return false)"
p linked_list.contains?("fucking_shit")
p linked_list
puts "#" * 50
5.times { |i| linked_list.prepend("prepended_data#{i}") }
puts "The list"
p linked_list
puts "\nString representation of the list:"
p linked_list.to_s
puts "\nList's size:"
p linked_list.size
puts "\nHead of the list:"
p linked_list.head
puts "\nTail of the list:"
p linked_list.tail
puts "\nElement at index 3:"
p linked_list.at(3)
puts "\nElement at index 9:"
p linked_list.at(9)
puts "\nElement at index 0:"
p linked_list.at(0)
puts "\nElement at index 30:"
p linked_list.at(30)
puts "\nDelete the last element from the list:"
p linked_list.pop
puts "\nString representation of the list:"
p linked_list.to_s
puts "\nTail of the list:"
p linked_list.tail
puts "\n"
puts "\nDoes the list contains nil ? (should return false)"
p linked_list.contains?(nil)
puts "\nDoes the list contains 'data2' ? (should return true)"
p linked_list.contains?("data2")
puts "\nDoes the list contains 'fucking_shit' ? (should return false)"
p linked_list.contains?("fucking_shit")
puts "\nThe list:"
p linked_list
puts "#" * 50
puts "Get index of element with data: data2"
p linked_list.find('data2')
puts "Get index of element with data: prepended_data3"
p linked_list.find('prepended_data3')
puts "Get index of element with data: prepended_data1"
p linked_list.find('prepended_data1')
puts "Get index of element with data: data0"
p linked_list.find('data0')
puts "Get index of element with data: fuck_them_up"
p linked_list.find('fuck_them_up')
linked_list.insert(2, "I'm inserted at index 2")
linked_list.insert(5, "I'm inserted at index 5")
linked_list.insert(8, "I'm inserted at index 8")
puts "\nString representation of the list:"
p linked_list.to_s
puts "\nThe list:"
p linked_list
