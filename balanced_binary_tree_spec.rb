require 'rspec'
require './balanced_binary_tree'

describe BalancedBinaryTree do
	context "newly created Binary Tree" do
		subject { BalancedBinaryTree.new }

		its(:root) { should be_nil }

	end

	describe BalancedBinaryTree::Node do
		context "newly created Node" do
			subject { BalancedBinaryTree::Node.new(6) }
			its(:left) { should be_nil }
			its(:right) { should be_nil }
		end
	end
end