module BalancedBinaryTree
	class Node
		attr_accessor :data, :left, :right, :count
		def initialize(data, left=nil, right=nil)
			@data, @left, @right = data, left, right
			@count = 0
		end
		
		def insert(data, node)
			return Node.new unless node
			
			case data <=> node.data
			when 1
				insert(data, node.left)
			when 0
				@count += 1		
			when -1
				insert(data, node.right)
			end
		end

	end
end
