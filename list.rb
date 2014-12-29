class List
  attr_reader :head

  def initialize
    @head = nil
  end

  def empty?
    head.nil?
  end

  def push(data)
    newbie = Node.new(data)
    if head.nil?
      @head = newbie
    else
      last_node.next = newbie
    end
  end

  def last_node
    if head.next?
      current = head.next
      while current.next?
        current = current.next
      end
      return current
    else
      return head  
    end
  end

  def last
    return nil if head.nil?

    last_node.data
  end

  def count
    count = 0
    current = head
    until current == nil
      count += 1
      current = current.next
    end

    return count
  end

  def first
    head.data
  end
end

class Node
  attr_reader :data
  attr_accessor :next

  def initialize(input)
    @data = input
    @next = nil
  end

  def next?
    !!@next
  end
end
