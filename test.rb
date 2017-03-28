require_relative 'linked_lists.rb'
require 'pry'

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
linked_list.remove_at(0)
puts "\nString representation of the list:"
p linked_list.to_s
linked_list.remove_at(0)
puts "\nString representation of the list:"
p linked_list.to_s
linked_list.remove_at(1)
puts "\nString representation of the list:"
p linked_list.to_s
linked_list.remove_at(2)
puts "\nString representation of the list:"
p linked_list.to_s
linked_list.remove_at(3)
puts "\nString representation of the list:"
p linked_list.to_s
linked_list.remove_at(4)
puts "\nString representation of the list:"
p linked_list.to_s
binding.pry
