require_relative './node'

class LinkedList

    attr_accessor :head

    def initialize
        @head = nil
    end

    def prepend(node)
        node.next_node = head
        self.head = node
    end

    def append(node)
        # Add element to the beginning of the list if the list is empty
        if head.nil?
          self.head = node
          return
        end
    
        # Otherwise, traverse the list to find the last node
        last_node = head
        while last_node.next_node
          last_node = last_node.next_node
        end
    
        # and add the node to the end
        last_node.next_node = node
    end

    def delete_head
        head.pop
    end



end
