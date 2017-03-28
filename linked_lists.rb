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

  def head
    return nil if @head.nil?
    @head.value
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
    if index < 0
      index = size + index
    end
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

  def remove_at(index)
    raise "cannot delete" if @head.nil?
    if index == 0
      @head = @head.next_node
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
    raise "cannot delete" if cur.nil?
    prev.next_node = cur.next_node if cur != nil
  end
end

class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
