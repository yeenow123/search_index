require 'rspec'
require './balanced_binary_tree'

describe BalancedBinaryTree do
	before do
		@tree = BalancedBinaryTree.new
	end
	
	context "that is empty" do
		subject { @tree }
		its(:root) { should be_nil }
	end

	context "with a root node and no children" do
		before { @tree.insert(6) }
		subject { @tree.root }
		its(:data) { should == 6 }

	end

	context "with a root node and a left child" do
		before do 
			@tree.insert(6)
			@tree.insert(3)
		end

		subject { @tree.root }

		its(:data) { should == 6 }

		describe "its child on the left" do
			subject { @tree.root.left }
			its(:data) { should == 3 }
		end
	end

	context "with a root node and a right child" do
		before do
			@tree.insert(6)
			@tree.insert(9)
		end

		subject { @tree.root }

		its(:data) { should == 6 }

		describe "its child on the right" do
			subject { @tree.root.right }
			its(:data) { should == 9 }
		end
	end

	context "with balanced nodes" do
		before do
			(1..10).each do |i|
				@tree.insert(i)		
			end
			@list = @tree.sorted_linked_list

		end

		describe "creating the sorted linked list" do
			subject { @list }				
			it { should == (1..10).to_a }
		end

		describe "finding the middle index (starting at 0) of the linked list" do
			before { @mid = @tree.find_mid(@list) }
			subject { @mid } 
			it { should == 4 }
		end

		describe "rebuilding into a balanced tree" do
			before do
				@tree.balance
			end
			subject { @tree.root }

			its(:data) { should == 5}
		end
	end
end