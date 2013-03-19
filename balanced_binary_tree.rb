class BalancedBinaryTree
	attr_accessor :root
	class Node
		attr_accessor :data, :left, :right
		def initialize(data, left=nil, right=nil)
			@data, @left, @right = data, left, right
		end
		
		def size
			size = 1
			size += @left.size unless @left.nil?
			size += @right.size unless @right.nil?
			size
		end

		# In-order traversal
		def each
			return if self.nil?

			@left.each { |node| yield node } unless @left.nil?
			yield self
			@right.each { |node| yield node } unless @right.nil?

		end

	end

	def initialize
		@root = nil
	end

	def insert(data, node)
		return @root = Node.new(data) if @root.nil?

		case data <=> node.data
			when -1
				node.left.nil? ? node.left = Node.new(data) : insert(data, node.left)
			when 0
				return
			when 1
				node.right.nil? ? node.right = Node.new(data) : insert(data, node.right)
		end	
	end

	def sorted_linked_list
		@list = []
		@root.each do |node|
			@list.push(node.data)
		end
		find_mid(@list)
	end

	def find_mid(sorted_arr)
		mid = (sorted_arr.size / 2).to_i
		return sorted_arr[mid]
	end
end







