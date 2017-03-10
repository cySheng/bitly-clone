class ChangeClickcount < ActiveRecord::Migration
	def change
		remove_column :urls, :clickcount, :integer
		add_column :urls, :clickcount, :integer, default: 0
	end
end
